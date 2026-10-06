# Discovery : [Nom du produit]

> **Fichier 1 sur 7 · le problème, la cible, les hypothèses.**
> **À quoi il sert :** répondre à « est-ce que ça vaut le coup, et pour qui ? » avant d'écrire du code. C'est la mémoire du pourquoi.
> **Quand le remplir :** en premier.
> **Comment :** en conversation. Tu racontes ce que tu as vécu ou observé, ton agent t'interviewe puis rédige (voir `DEMARRER.md`).
> **Quand le mettre à jour :** quand un test confirme ou tue une hypothèse, quand la cible bouge (avec une entrée dans `docs/decisions.md`). Quand le produit vit, ce fichier devient `docs/strategy.md` : le pourquoi, qui change rarement.
>
> Remplace les [crochets]. Les lignes « Exemple Premier Envol » montrent le niveau de détail attendu : supprime-les une fois ta version écrite.

## 1. Le problème

### Le déclencheur

[La situation vécue qui t'a fait démarrer. Raconte-la comme une scène : qui, quand, ce qui coinçait.]

### Les douleurs

[Deux ou trois douleurs, chacune en une phrase, dans les mots de l'utilisateur.]

*Exemple Premier Envol : « Où chercher ? », « Comment savoir si je peux lui faire confiance ? », « Je deviens employeur ?! ».*

### Pourquoi maintenant

[Ce qui rend le problème plus vif aujourd'hui : une réforme, une technologie, un usage qui change.]

## 2. Pour qui

- **Cœur de cible :** [qui, dans quelle situation, ce qui le stresse]. Tout arbitrage se tranche en sa faveur.
- **Hors cible :** [qui tu laisses de côté, et pourquoi]
- **Le job à accomplir :** « Quand [situation], je veux [motivation], pour [résultat attendu]. »

*Exemple Premier Envol : cœur de cible, le parent d'un premier enfant qui anticipe. Il découvre tout et la date de reprise le presse. Hors cible : le parent expérimenté, qui connaît déjà les démarches.*

## 3. Ce qu'ils font aujourd'hui

| Alternative | Ce qu'elle fait bien | Où elle lâche l'utilisateur |
|---|---|---|
| [un concurrent, un outil, une habitude, ou « rien »] | [ ] | [ ] |

**Le vrai concurrent :** [souvent une habitude, un tableur, ou la confusion]

## 4. Ce qu'on sait déjà

[Les preuves : entretiens, verbatims, chiffres, posts lus dans des forums ou des groupes. Une date et une source pour chacune.]

| Date | Source | Ce qu'on a appris |
|---|---|---|
| [AAAA-MM-JJ] | [entretien, groupe, chiffre public] | [ ] |

## 5. Les hypothèses à tester

| # | Hypothèse | Risque | Test le plus rapide | Réussi si… |
|---|---|---|---|---|
| H1 | [La cible vit ce problème assez fort pour changer d'outil] | valeur | [5 entretiens] | [4 sur 5 le décrivent sans qu'on le souffle] |
| H2 | [La donnée nécessaire existe et elle est fiable] | faisabilité | [un spike d'une journée] | [ ] |
| H3 | [ ] | [valeur, faisabilité, viabilité ou usage] | [ ] | [ ] |

**Teste ta donnée avant de coder.** Une hypothèse de faisabilité tuée le premier jour coûte une journée. Découverte après la V1, elle coûte le produit.

*Exemple Premier Envol : un spike d'une journée a montré que les disponibilités à jour des assistantes maternelles n'existaient nulle part. Le produit a changé de cap avant la première ligne de code : la valeur est passée de la donnée à la pédagogie.*

## 6. La promesse

[Une phrase : faire passer [qui] de « [état de départ] » à « [état d'arrivée] », en [combien de temps].]

*Exemple Premier Envol : faire passer un parent de « je suis perdu » à « je sais quoi faire, dans quel ordre, et combien ça coûte », en une session.*

## 7. La métrique d'activation

[Le moment où l'utilisateur reçoit la valeur pour la première fois. Un événement mesurable, branché dès le jour 1.]

- **Activation :** [l'action qui prouve la valeur, par exemple « a terminé la première étape »]
- **Comment on la mesure :** [outil, nom de l'événement]
- **Par canal :** [une lecture par canal d'acquisition : d'où viennent ceux qui s'activent ?]
- **On conclut à partir de :** [le volume minimum avant de tirer une conclusion]

*Exemple Premier Envol : activation = l'orientation terminée, la première étape du guide. Mesurée dans PostHog depuis le lancement.*

## 8. Le périmètre de la V1

- **Dedans :** [trois à cinq capacités, dans les mots de l'utilisateur]
- **Dehors, pour l'instant :** [ce qu'on ne fera pas, et pourquoi]

## 9. Questions ouvertes

- [Ce qu'on ne sait pas encore et qui pourrait tout changer]
