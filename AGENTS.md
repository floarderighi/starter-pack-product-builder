# AGENTS.md : [Nom du produit]

> **État : modèle à remplir.** Tant que ce bloc est là, le projet démarre. Si la personne ne l'a pas déjà fait, propose-lui de lancer l'interview : « Lis DEMARRER.md et lance-toi ». Supprime ce bloc quand les fichiers 1 à 5 sont remplis.

> **Fichier 5 sur 7 · la carte.**
> **À quoi il sert :** c'est le seul fichier que tous les agents lisent à chaque session (Codex directement, Claude Code par `CLAUDE.md`, Gemini CLI par `GEMINI.md`). Il dit ce qui est toujours vrai et où trouver le reste.
> **Quand le remplir :** en deux temps. Après les fichiers 1 à 4 pour le produit et les conventions ; après le premier code pour la stack et les commandes.
> **Comment :** ton agent le rédige à partir des autres fichiers. Après le premier code, `/init` peut compléter la stack ; coupe ensuite.
> **Quand le mettre à jour :** quand une convention change, quand un fichier change de rôle. Garde-le sous 200 lignes : au-delà, les consignes sont moins bien suivies.
>
> Remplace les [crochets]. Les lignes « Exemple Premier Envol » montrent le niveau de détail attendu : supprime-les une fois ta version écrite.

## Le produit

[En deux ou trois phrases : ce que c'est, pour qui, la promesse. Le détail vit dans `docs/discovery.md`.]

- **Ce que ce n'est pas :** [ce que le produit refuse de devenir]
- **La voix :** [en une ligne ; le détail vit dans `PRODUCT.md`]

*Exemple Premier Envol : un guide qui prend un futur parent par la main pour faire garder son enfant. Son concurrent : la confusion. Ni annuaire ni marketplace. Tutoiement partout, zéro jargon.*

## Carte de la connaissance

| Tu cherches… | Va dans… | Statut |
|---|---|---|
| Le problème, la cible, les hypothèses, la métrique | [`docs/discovery.md`](docs/discovery.md) | vivant, change rarement |
| Pour qui, la personnalité, la voix | [`PRODUCT.md`](PRODUCT.md) | vivant |
| Couleurs, polices, composants | [`DESIGN.md`](DESIGN.md) | vivant |
| Les étapes du parcours et leur ton | [`docs/parcours.md`](docs/parcours.md) | vivant |
| Quoi faire ensuite (le seul backlog) | [`docs/now.md`](docs/now.md) | vivant, revu chaque semaine |
| Ce qui est tranché, et pourquoi (DEC-xx) | [`docs/decisions.md`](docs/decisions.md) | vivant, ajout seul |

**Un fait, une seule maison.** Ailleurs, mets un lien. Quand tu apprends quelque chose de durable (une décision, un piège, une priorité), écris-le dans le bon fichier du dépôt : c'est la seule mémoire que tous les agents partagent.

## Stack et commandes

[À remplir après le premier code : langage, framework, hébergement.]

```bash
[installer les dépendances]
[lancer en local]
[vérifier : build, tests, lint]
```

**La vérification qui fait foi :** `[commande]`. Lance-la avant de dire qu'une tâche est finie.

## Où vivent les choses

[À remplir après le premier code : un tableau « besoin → fichier ». Une source par sujet.]

| Besoin | Fichier(s) |
|---|---|
| [ex. les étapes du parcours] | [ex. `src/data/steps.ts`, la seule source que lisent les écrans] |

## Conventions non négociables

- **Voix :** [tutoiement ou vouvoiement, le ton en quelques mots, les mots bannis]. Le détail vit dans `PRODUCT.md`.
- **Design :** les couleurs, polices et composants viennent de `DESIGN.md`. Réutilise un composant existant avant d'en créer un ; n'invente ni couleur ni police.
- **Contenu :** [où vit le texte éditorial, par exemple dans des fichiers de données plutôt qu'en dur dans les composants].
- **Mobile et accessibilité :** [par exemple : mobile d'abord, cibles tactiles d'au moins 44 px, jamais une information portée par la seule couleur].
- [Ta règle à toi.]

## Comment tu travailles avec moi

- **Montre avant d'étendre :** un premier écran, mon retour, puis la suite.
- **En cas de doute, demande.** N'invente jamais un chiffre, un témoignage ou une source.
- [Exemple : ne pousse jamais sur la branche principale sans ma demande, un push met en ligne.]
- [Exemple : je teste moi-même. Quand une itération est prête, lance la vérification, puis demande-moi de tester.]

## Contrat de maintenance de la doc

La doc fait partie du code. En fin de session, avant de conclure :

| Si tu as… | Mets à jour… |
|---|---|
| livré ou commencé une tâche, trouvé une piste | `docs/now.md` |
| tranché un choix (produit, design, technique) | `docs/decisions.md`, une entrée DEC-xx |
| changé une étape du parcours | `docs/parcours.md` |
| changé la cible, la promesse ou la voix | `PRODUCT.md`, et `docs/discovery.md` si la cible ou le problème bougent |
| touché aux couleurs, polices ou composants | `DESIGN.md` |
| ajouté une commande, un dossier ou une convention | ce fichier |

Si rien de tout ça n'a bougé, ne touche à rien. Dans Claude Code, un hook te le rappelle quand du code a changé sans la doc (`.claude/hooks/doc-reminder.sh`).
