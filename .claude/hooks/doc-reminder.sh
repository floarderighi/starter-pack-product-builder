#!/usr/bin/env bash
# Hook Stop de Claude Code : rappelle à l'agent de mettre la doc à jour.
#
# Se déclenche quand du code a changé dans le dépôt sans qu'aucun fichier de doc
# (AGENTS.md, CLAUDE.md, GEMINI.md, PRODUCT.md, DESIGN.md, docs/) n'ait bougé.
# La détection est volontairement grossière (au niveau du fichier), d'où :
#   1. un seul rappel par session, pour ne pas insister à chaque tour ;
#   2. un message qui dit « si aucune mise à jour n'est nécessaire, conclus ».
# Branché dans .claude/settings.json. A besoin de git ; sans dépôt, il ne fait rien.

input=$(cat)

# Anti-boucle : si l'agent reprend déjà à cause de ce hook, on sort.
if printf '%s' "$input" | grep -q '"stop_hook_active"[[:space:]]*:[[:space:]]*true'; then
  exit 0
fi

repo=$(git rev-parse --show-toplevel 2>/dev/null) || exit 0

# Fichiers modifiés ou nouveaux, chemins relatifs à la racine du dépôt.
changed=$(git -C "$repo" status --porcelain | cut -c4-)
[ -z "$changed" ] && exit 0

# La doc : la carte et ses adaptateurs, le produit, le design, tout docs/.
docs_re='(^|/)(AGENTS|CLAUDE|GEMINI|PRODUCT|DESIGN)\.md$|^docs/'

# La doc a déjà été touchée : on suppose la mise à jour faite.
if printf '%s\n' "$changed" | grep -qE "$docs_re"; then
  exit 0
fi

# Ce qui compte comme du code : tout sauf les fichiers Markdown et la config des agents.
code=$(printf '%s\n' "$changed" | grep -vE '\.md$|^\.claude/|^\.gemini/|^\.codex/' | head -n 1)
[ -z "$code" ] && exit 0

# Un seul rappel par session.
session_id=$(printf '%s' "$input" | sed -n 's/.*"session_id"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p')
[ -z "$session_id" ] && session_id="sans-session"
marker="${TMPDIR:-/tmp}/starter-pack-doc-reminder-${session_id}"
[ -f "$marker" ] && exit 0
: > "$marker"

# Exit 2 : le message revient à l'agent, qui vérifie puis conclut.
echo "📝 Doc : du code a changé, mais aucun fichier de doc. Relis la table « Contrat de maintenance » d'AGENTS.md : une tâche avancée va dans docs/now.md, un choix tranché dans docs/decisions.md, une nouvelle convention ou commande dans AGENTS.md. Si rien de tout ça n'a bougé, aucune mise à jour n'est nécessaire : tu peux conclure. (Rappel unique pour cette session.)" >&2
exit 2
