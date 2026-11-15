import Init

/-!
The finite logical core of the team's three-centre argument.

P, Q, R are palettes, represented by membership predicates. J and K are
the two groups of labels supplied by the state hypotheses. Every label
outside J and K is the same distinguished label X. The analytic argument
supplies the inclusion, disjointness and witness hypotheses below.

This file proves only the palette-counting contradiction. It does not prove
trace existence, almost-everywhere statements, unit-distance geometry,
fixed-state separation, moving-state separation, or the global theorem.
-/

namespace Mathathon.ThreeCentrePaletteCore

/-- Three pairwise disjoint palettes cannot have the membership properties
forced by the three-centre argument when only one label lies outside J and K.

The predicates may be on any type of labels. In the five-colour application,
J is the first pair, K is the second pair, and X is the sole remaining label.
-/
theorem no_three_disjoint_palettes
    {Label : Type} (P Q R J K : Label → Prop) (X : Label)
    (outside_unique : ∀ i, (¬ (J i ∨ K i)) ↔ i = X)
    (J_in_P : ∀ i, J i → P i)
    (P_disjoint_Q : ∀ i, P i → Q i → False)
    (P_disjoint_R : ∀ i, P i → R i → False)
    (Q_disjoint_R : ∀ i, Q i → R i → False)
    (Q_outside_K : ∃ i, Q i ∧ ¬ K i)
    (R_outside_K : ∃ i, R i ∧ ¬ K i) : False := by
  cases Q_outside_K with
  | intro q hq =>
    cases R_outside_K with
    | intro r hr =>
      have q_not_J : ¬ J q := fun h => P_disjoint_Q q (J_in_P q h) hq.1
      have r_not_J : ¬ J r := fun h => P_disjoint_R r (J_in_P r h) hr.1
      have q_eq_X : q = X := (outside_unique q).mp
        (fun h => Or.elim h q_not_J hq.2)
      have r_eq_X : r = X := (outside_unique r).mp
        (fun h => Or.elim h r_not_J hr.2)
      have X_in_Q : Q X := q_eq_X ▸ hq.1
      have X_in_R : R X := r_eq_X ▸ hr.1
      exact Q_disjoint_R X X_in_Q X_in_R

end Mathathon.ThreeCentrePaletteCore

#print axioms Mathathon.ThreeCentrePaletteCore.no_three_disjoint_palettes
#check @Mathathon.ThreeCentrePaletteCore.no_three_disjoint_palettes
