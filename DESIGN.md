---
name: "[Nom du produit]"
description: "[L'intention visuelle en une ligne]"
---

# Design System: [Nom du produit]

> **Fichier 3 sur 7 · couleurs, polices, composants.**
> **À quoi il sert :** dire à l'IA à quoi ressemble ton produit, pour qu'elle arrête de produire le design par défaut que tout le monde reconnaît (la police Inter partout, des dégradés violets). Briefe ton IA comme tu briefes un designer.
> **Quand le remplir :** après `PRODUCT.md`. Une première version avant le code pour l'intention, complétée par les vraies valeurs une fois le premier écran construit.
> **Comment :** en interview (voir `DEMARRER.md`), ou avec impeccable : `/impeccable document` propose une direction avant le code, puis relève les vraies valeurs dans le code. Les titres suivent le format DESIGN.md, que lisent impeccable et d'autres outils de design.
> **Quand le mettre à jour :** à chaque changement de couleur, de police ou de composant, dans la même session.
>
> Remplace les [crochets]. Les lignes « Exemple Premier Envol » montrent le niveau de détail attendu : supprime-les une fois ta version écrite.

## Overview

**Creative North Star : « [une image qui résume le style] »**

[Deux ou trois phrases : la personnalité visuelle, la densité (aéré ou dense), la matière (plat, ombres douces, relief).]

*Exemple Premier Envol : « Le doudou et la page blanche ». Des objets doux et arrondis, en relief, posés sur une page blanche et aérée. Une mascotte, l'oisillon. Une décision par écran.*

**Ce qu'on rejette :** [les styles qui trahiraient le produit]

## Colors

[La palette en une phrase.] Une couleur, un rôle : décris le rôle, la valeur suit.

- **Action** ([#hex]) : [boutons principaux, liens, étape en cours]
- **Structure** ([#hex]) : [navigation, titres, panneaux]
- **Accent** ([#hex]) : [rare, donc remarqué]
- **Fonds** ([#hex]) : [la page, les surfaces]
- **Texte** ([#hex]) : [principal, secondaire]

*Exemple Premier Envol : bleu électrique pour l'action, navy pour la structure, corail pour l'accent, page blanche. Une information n'est jamais portée par la couleur seule.*

## Typography

- **Titres :** [police] ([son caractère : ronde, géométrique, serif…])
- **Texte :** [police]

[Une phrase sur le duo : pourquoi ces deux-là ensemble.]

*Exemple Premier Envol : Fredoka, ronde et chaleureuse, pour les titres ; Nunito pour le texte. Aucun serif.*

## Layout

[Mobile d'abord ? Largeur de lecture ? Densité ? Une décision par écran, ou un tableau de bord ?]

## Elevation & Depth

[Plat, ombres douces ou relief ? Comment un élément se détache du fond.]

## Shapes

[Coins arrondis ou vifs ? Pilules ? Le langage des formes.]

## Components

[À compléter quand les premiers composants existent : boutons, cartes, champs, navigation. Pour chacun : à quoi il ressemble et ses états (survol, focus, désactivé).]

## Do's and Don'ts

Les « Don't » de départ sont les marqueurs du design fait par une IA : garde-les, sauf raison précise.

### Do:
- **Do** [ce qui fait ton style]
- **Do** doubler toute information de couleur d'une icône, d'un libellé ou d'une forme.

### Don't:
- **Don't** utiliser Inter, ou la police système, partout.
- **Don't** mettre des dégradés violet-bleu, du texte en dégradé ou des effets de verre décoratifs.
- **Don't** empiler des cartes dans des cartes, ni poser un petit titre en capitales au-dessus de chaque section.
- **Don't** remplacer les icônes de l'interface par des emojis.
- **Don't** [ce qui trahirait ton produit]
