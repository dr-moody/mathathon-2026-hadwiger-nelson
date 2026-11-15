# Mathathon 2026: understanding the five-colour proof

Jarom Moody · Problem 33 · Combinatorics

This repository assembles the report, teaching slides, and supporting mathematical sources for the 2026 Mathathon. The supplied theorem is that the Euclidean plane is not five-colourable. The submission explains that proof and develops local arguments, including a three-centre replacement for the separation part of its strict-state lemma.

**No new global chromatic bound is claimed.** The supplied result and the classical seven-colouring give `6 ≤ χ(ℝ²) ≤ 7`. Our work neither excludes six colours nor constructs a six-colouring.

## Reading order

1. [report.pdf](report.pdf) and its self-contained source [report.tex](report.tex): the mathematical account, attribution, declaration-to-claim mappings, and limitations; 27 pages including the original separation-proof appendix.
2. `slides.pdf`: the presentation and reference appendix. This file is being prepared separately and is not present until exported and checked.
3. [ProofWalkthrough.md](HadwigerNelson/Exposition/ProofWalkthrough.md): the longer staged reader.
4. [SOURCE-MANIFEST.json](SOURCE-MANIFEST.json): byte-level provenance for the copied supporting material.

The report is compiled and visually checked; the new slides are still being assembled. This repository has **not been submitted to the competition**. See [SUBMISSION-CHECKLIST.md](SUBMISSION-CHECKLIST.md) for the remaining concrete checks.

## What is inherited and what was changed

The five-colour theorem, transfer theorem, density-point exclusion, interface construction, and cycle exclusions are results of the supplied manuscript. The three-centre proof reuses its palette disjointness and avoiding-trace inputs. It replaces a separation argument using an exact unit triangle and a finite-label contradiction; the original density assertion remains an input. The report describes further local results and source simplifications with their individual evidence and hypotheses.

The source manuscript is included as [references/supplied-paper.pdf](references/supplied-paper.pdf). Supplied Lean source provenance is pinned to `openai/math` revision `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`. Attribution is retained in [NOTICE.md](NOTICE.md) and [UPSTREAM-LICENSE](UPSTREAM-LICENSE).

## Lean evidence: read the version carefully

The historical files below `HadwigerNelson/Main/ResearchSnapshot/` preserve checks performed on **Lean 4.34.1** with mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The ledger's historical status `LEAN_VERIFIED` refers to that environment. It does not mean the event's optional Lean check has passed. These files are supplementary evidence, not a buildable v4.35.0 submission project at this repository's root.

[historical-lean/](historical-lean/) contains the complete 83-module accepted S2 source tree, pinned historical dependency configuration, and archived checks. This preserves the older version requested for reference if migration is not completed.

The competition requires Lean **v4.35.0** and mathlib **v4.35.0**. A separate migration is being assessed. Only declarations with a successful build, matching statement, and permitted axiom audit will be described as verified under the required environment. Any ported subset will be distinguished from the much larger historical development.

Compiler/audit records are included as evidence; conversational transcripts, credential files, caches, and unrelated scratch work are excluded. Historical paths inside logs refer to the original research machine. `SOURCE-MANIFEST.json` maps the copied files and records the one external evidence path under `supplementary/external-evidence/`.

## Rebuilding the report

From the repository root, run `tectonic report.tex` (or a LaTeX engine with the standard packages in its preamble). The report is one source file: no external bibliography or included TeX fragments are needed. Every key diagram is explained in words in the report.

## Submission and revision convention

The official deadline is **15 November 2026, 12:00 PM Pacific**. The repository is private while the package is reviewed; organizer access must be established before submission. A repository link alone does not submit an entry: the human team must upload the repository URL and full final commit hash on the competition platform.

The report title block identifies supporting-source commit `a05c6d1d3f75a986c56956ef9cde31d549850475`. A later packaging commit contains the PDF compiled from that title block and the presentation. The platform's submitted hash must identify that final packaging commit. These are separate revisions because a file cannot contain the hash of the Git commit that contains that file. This convention is explicit; the published rules do not discuss the self-reference issue.

Rules audited at `SAIRcompetition/mathathon-judge` revision `4d6098d263275ff1cb0308908a693e776c116f53`:

- [Participant rules](https://github.com/SAIRcompetition/mathathon-judge/blob/4d6098d263275ff1cb0308908a693e776c116f53/rules/participant-rules.md)
- [Submission guidelines](https://github.com/SAIRcompetition/mathathon-judge/blob/4d6098d263275ff1cb0308908a693e776c116f53/rules/submission-guidelines.md)
- [Judging guidelines](https://github.com/SAIRcompetition/mathathon-judge/blob/4d6098d263275ff1cb0308908a693e776c116f53/rules/judge-guidelines.md)
- [Official problem 33](https://github.com/SAIRcompetition/mathathon-judge/blob/4d6098d263275ff1cb0308908a693e776c116f53/problems_original/033-hadwiger-nelson-problem-the-euclidean-plane-is-not-five.md)
