# Three-centre palette counting: Lean 4.35.0

This small project formalizes the exact logical counting contradiction used inside the team's three-centre simplification. It is deliberately limited to that step. The complete analytic development and its older validation are supplied separately as historical evidence.

Declaration: `Mathathon.ThreeCentrePaletteCore.no_three_disjoint_palettes`.

Let `P`, `Q`, and `R` be three pairwise disjoint palettes. Let `J` be contained in `P`. Suppose there is exactly one label `X` outside `J` and `K`, while each of `Q` and `R` has a label outside `K`. Disjointness from `P` forces these two witness labels outside `J` as well. Therefore both witnesses equal `X`, contradicting disjointness of `Q` and `R`.

In the five-colour example, `J = {1,2}`, `K = {3,4}`, and `X = 5`. The formal statement works for any type of labels; palettes are represented by membership predicates. There is no assertion that `P`, `Q`, or `R` is a complementary pair.

## Precise scope

The inclusion, disjointness, uniqueness, and outside-`K` witness conditions are **explicit hypotheses** of the checked theorem. The theorem does not formalize how trace compactness, almost-everywhere transport, the weak-colouring condition, or the equilateral geometry establish those hypotheses. It does not by itself prove fixed-state separation, moving-state separation, or the global colouring result. The report's paper argument explains how the accepted analytic lemmas supply them.

The proof uses only `Init`, with no admissions and no axioms. Lean and Mathlib are pinned to v4.35.0; the dependency manifest fixes all transitive revisions. Mathlib is pinned for the submission environment but is not imported by this theorem.

## Reproduction

Run `lake build` from this directory. The source ends with `#print axioms` and `#check`, so the build log displays the checked statement and its empty axiom dependency list. `VALIDATION.json` and `build.log` record the validation performed for this submission.

## Provenance

This is a direct formal isolation of the finite palette-counting step from the team's accepted three-centre proof. It adapts that logical step to a dependency-light statement for the required Lean version. It is not a fresh proof of the supplied global theorem. The older integrated theorem statements remain in the historical development.
