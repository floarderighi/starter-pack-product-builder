# Le starter pack du Product Builder

**7 fichiers pour construire un produit avec une IA de code (Claude Code, Codex, Gemini CLI) sans qu'elle perde le fil.** Tu les remplis en conversation avec ton agent. Ensuite, il les relit à chaque session et les tient à jour.

La page du pack, avec le replay du webinar : [trackrecord.pm/starter-pack](https://trackrecord.pm/starter-pack).

> Ce que l'IA ne peut pas lire n'existe pas.

## D'où vient ce pack

J'ai construit [Premier Envol](https://premierenvol.fr) avec Claude Code : un guide qui prend les futurs parents par la main pour faire garder leur enfant. Ce pack rassemble la méthode qui a tenu, dans l'ordre où je la reprendrais si je repartais de zéro.

Il contient aussi la leçon de ce qui a cassé. Mon PRD n'avait pas bougé depuis juin : 31 commits plus tard, Claude codait d'après une version périmée. Je l'ai éclaté en fichiers vivants, un rôle par fichier. Un fait, une seule maison.

## Les 7 fichiers, dans l'ordre

| # | Fichier | Ce qu'il contient | Comment tu le remplis |
|---|---|---|---|
| 1 | [`docs/discovery.md`](docs/discovery.md) | le problème, la cible, les hypothèses, la métrique d'activation | ton agent t'interviewe |
| 2 | [`PRODUCT.md`](PRODUCT.md) | pour qui, la personnalité, la voix | interview, ou `/impeccable init` |
| 3 | [`DESIGN.md`](DESIGN.md) | couleurs, polices, composants | interview, ou impeccable |
| 4 | [`docs/parcours.md`](docs/parcours.md) | les étapes et le ton, avant le code | interview, puis un challenge |
| 5 | [`AGENTS.md`](AGENTS.md) | la carte : stack, règles, où est quoi | à partir des fichiers 1 à 4, complétée après le premier code |
| 6 | [`docs/now.md`](docs/now.md) | le seul backlog | ton agent le tient à jour |
| 7 | [`docs/decisions.md`](docs/decisions.md) | ce qui est tranché, et pourquoi | une entrée à chaque arbitrage |

Chaque fichier commence par son mode d'emploi : à quoi il sert, quand le remplir, comment, quand le mettre à jour. Des exemples tirés de Premier Envol montrent le niveau de détail attendu.

Tu as vu ma présentation ? La carte s'y appelait `CLAUDE.md`. Ici, elle s'appelle `AGENTS.md`, le format standard que lisent Codex, Cursor et la plupart des agents. `CLAUDE.md` et `GEMINI.md` tiennent en une ligne qui l'importe.

## Démarrer

### Avec un agent de code (Claude Code, Codex, Gemini CLI, Cursor)

1. Récupère le pack : bouton **Use this template** en haut de cette page pour en faire ton propre dépôt, ou [télécharge le zip](https://github.com/floarderighi/starter-pack-product-builder/archive/refs/heads/main.zip).
2. Ouvre le dossier dans ton outil.
3. Écris : **Lis DEMARRER.md et lance-toi.**

Ton agent t'interviewe et remplit les 7 fichiers avec toi, un par un. Prévois une soirée, ou avance en plusieurs fois : tout ce qui est validé reste dans les fichiers. Pressé ? Demande le mode express.

### Dans un simple chat (Claude.ai, ChatGPT, Gemini)

Joins les fichiers du pack à la conversation et écris la même phrase. L'assistant te rend chaque fichier rempli, que tu recopies dans ton dossier. Le jour où tu passes à un agent de code, tout est déjà prêt.

### Sur un projet qui existe déjà

Copie les fichiers dans ton dépôt, sans écraser un `AGENTS.md` ou un `CLAUDE.md` existant (fusionne-les plutôt), puis écris : **Lis DEMARRER.md. Le projet existe déjà : pars du code et des docs, puis interviewe-moi sur ce qui manque.**

## Compatibilité

| Outil | Ce qu'il lit à chaque session |
|---|---|
| Codex | `AGENTS.md` |
| Claude Code | `CLAUDE.md`, qui importe `AGENTS.md` |
| Gemini CLI | `GEMINI.md`, qui importe `AGENTS.md` |
| Cursor et les autres agents compatibles | `AGENTS.md` |
| Un chat (Claude.ai, ChatGPT, Gemini) | les fichiers que tu joins à la conversation |

Une seule carte, donc : tu la modifies à un endroit, tous tes outils la voient.

## Comment le pack reste à jour

Le travail de mise à jour revient à l'agent. En fin de session, il met à jour le bon fichier : la table « Contrat de maintenance » d'`AGENTS.md` lui dit lequel. Dans Claude Code, un hook le lui rappelle s'il a modifié du code sans toucher à la doc ([`.claude/hooks/doc-reminder.sh`](.claude/hooks/doc-reminder.sh), il a besoin de git). Les versions pour Gemini CLI et Codex arrivent dans la prochaine mise à jour du pack.

Ta part : relire `docs/now.md` une fois par semaine, et `docs/decisions.md` quand un agent propose de revenir sur un choix.

## 3 tips de Product Builder

1. **Teste ta donnée avant de coder.** Pour Premier Envol, un spike d'une journée a montré que la donnée au cœur de l'idée de départ n'existait nulle part. Le produit a changé de cap avant la première ligne de code.
2. **Briefe ton IA comme tu briefes un designer.** `PRODUCT.md`, `DESIGN.md`, et le skill [impeccable](https://github.com/pbakaus/impeccable) pour critiquer chaque écran important. C'est ce qui évite le design « fait par une IA » qui se repère en deux secondes : la police Inter partout, des dégradés violets.
3. **Une métrique par canal d'acquisition.** Branche ta métrique d'activation dès le jour 1, puis lis-la canal par canal : tu sauras où mettre ton temps.

## Et après : le niveau 2

Quand le produit vit, certains fichiers se dédoublent. `discovery.md` devient `strategy.md`, le pourquoi qui change rarement. Chaque grosse feature reçoit sa spec. Des règles par zone (SEO, mesure, paiement) ne se chargent que quand l'agent touche les fichiers concernés, et un CHANGELOG se génère depuis les commits. Ce sera la v2 du pack : [suis-moi sur LinkedIn](https://www.linkedin.com/in/florian-arderighi/) pour la recevoir.

## Qui l'a conçu

Florian Ardérighi, 15 ans de Product, fondateur de [Track Record](https://trackrecord.pm) : des Product Managers, Builders et Ops freelance choisis sur leur palmarès.

- Tu as construit quelque chose avec ce pack ? Montre-moi, [sur LinkedIn](https://www.linkedin.com/in/florian-arderighi/).
- Tu es PM ou Product Builder freelance et tu travailles déjà comme ça ? Écris-moi : florian@trackrecord.pm.
- Pour recruter des PM qui travaillent comme ça : [trackrecord.pm](https://trackrecord.pm).

## Licence

[CC BY 4.0](LICENSE) : tu peux copier, adapter et partager ce pack, y compris pour un usage commercial, en citant « Starter pack du Product Builder, par Florian Ardérighi (trackrecord.pm) ».

v1.0 · octobre 2026
