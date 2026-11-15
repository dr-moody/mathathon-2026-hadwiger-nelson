# Historical Lean 4.34.1 evidence

This is the complete accepted S2 source tree: the supplied development with the team's encoding refactor, three-centre replacement, branch-free step ban and reviewed dead-code deletions. It is attributed simplification evidence, not a new formalization of the supplied main theorem.

The archived logs record Lean 4.34.1 with Mathlib commit `d13f23b723b8a846827a245b89c10fc7d3f11612`. They are historical evidence. This directory is **not a claim of compliance with the submission's Lean/Mathlib v4.35.0 requirement**.

The source tree and exact dependency pins are packaged here for reproducibility. Packaging itself was not a new 4.34.1 rebuild. On a compatible machine, use `lake exe cache get`, then `lake build`. `HistoricalCheck.lean` imports the relevant roots and prints their axiom dependencies.

The source manifest records SHA-256 of every included OAI source file. The archived S2 manifest and logs describe the previous 67-module rebuild and root/statement gates; unchanged dependencies were inherited from the earlier accepted build. Original sources and evidence remain preserved in the parent research repository.
