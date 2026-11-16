# DPA Review — Self-Study Materials

A self-study pack on how to review a **Data Processing Agreement (DPA)**, **DPA addendum**, or **HIPAA Business Associate Agreement (BAA)** against four regulatory regimes: **GDPR**, **US state privacy law** (CCPA/CPRA, VCDPA, CPA, CTDPA, etc.), **HIPAA**, and **general commercial** DPAs with no specific regime stated.

The content is adapted from the `dpa-checklist-review` skill in [LegalQuants/lq-ai](https://github.com/LegalQuants/lq-ai), an open-source (Apache 2.0) legal-AI platform. It was originally written as an AI agent skill (instructions for an LLM to follow when reviewing a DPA), but the underlying legal content — the actual checklist of what a compliant DPA must contain, clause by clause, with citations — is exactly what a person reviewing a DPA by hand needs too. See [`NOTICE`](NOTICE) for attribution details.

## How to use this for self-study

Work through it in this order:

### 1. Understand the review framework — [`SKILL.md`](SKILL.md)

Read this first. It lays out the **three-pass review method** used throughout:

1. **Document orientation** — confirm it's actually a DPA/BAA, identify the parties' roles (controller/processor, etc.), note structure and annexes.
2. **Regime-specific term checking** — walk a checklist of required terms, classifying each as *Present / Partial / Missing / Unclear / N/A*.
3. **Compile the checklist and posture** — roll the findings up into an overall compliance posture (Compliant / Compliant with minor gaps / Non-compliant / Materially non-compliant).

This structure is the real transferable skill — it's how you'd approach *any* DPA review by hand, regardless of which regime applies.

### 2. Pick a regime and learn its required terms — [`reference/`](reference)

Each file is a clause-by-clause checklist with the statutory citation, what "compliant" language looks like, and the common deficiencies seen in the wild:

| File | Regime | Required terms covered |
|---|---|---|
| [`gdpr_requirements.md`](reference/gdpr_requirements.md) | EU/UK GDPR Article 28 | The 9 items in Art. 28(3)(a)–(h), Art. 32 security, Art. 44–49 international transfer mechanisms (SCCs, Schrems II/TIA) |
| [`us_state_privacy_requirements.md`](reference/us_state_privacy_requirements.md) | CCPA/CPRA, VCDPA, CPA, CTDPA, UCPA, OCPA | 12 convergent requirements across US state privacy laws, with state-specific call-outs |
| [`hipaa_baa_requirements.md`](reference/hipaa_baa_requirements.md) | HIPAA | 45 CFR §164.504(e)(2) BAA terms + HITECH/Omnibus Rule additions |
| [`general_commercial_requirements.md`](reference/general_commercial_requirements.md) | No specific regime | 15 commercially-standard DPA terms that are broadly compatible with any regime |

Each file ends with a **severity calibration** section — how to decide whether a gap is Critical, Material, or Minor. This is the part most self-taught reviewers skip and shouldn't: knowing *what to escalate* is as important as knowing *what's required*.

### 3. See it applied — [`examples/`](examples)

Two fully worked reviews, each showing a real (fictional) DPA excerpt followed by the complete checklist output:

- [`example_gdpr.md`](examples/example_gdpr.md) — GDPR review from the **controller** perspective.
- [`example_us_state.md`](examples/example_us_state.md) — CCPA review from the **service-provider/processor** perspective.

Read the input, try to spot the gaps yourself, then compare against the output.

### 4. Test yourself — [`acceptance/`](acceptance)

This is the most useful part for self-study. These are the test fixtures the original skill was validated against:

- [`acceptance/fixtures/`](acceptance/fixtures) — sample DPA/BAA text excerpts (`gdpr-baseline.md`, `gdpr-gaps.md`, `hipaa-baa.md`).
- [`acceptance/snapshots/`](acceptance/snapshots) — the corresponding "golden" expected-output JSON for each fixture.

**Do this as an exercise:** read a fixture, write your own checklist assessment using the relevant `reference/` file, then compare your answer against the matching `.golden.json` snapshot. This is close to how you'd self-check against a senior reviewer's markup.

### 5. (Optional, meta-level) — [`test-plan.md`](test-plan.md)

How the original authors validated the skill itself: 7 test scenarios (one per regime plus multi-regime and international-transfer cases) and 2 refusal scenarios (document isn't actually a DPA; regime conflicts with document content). Useful if you're curious how a legal-review checklist gets QA'd at all, not just what's in it.

## What this is not

This is self-study material, not legal advice, and not a substitute for qualified privacy counsel. The checklists reflect the state of GDPR/CCPA/HIPAA guidance as of the source skill's `v1.0.0` — privacy law moves fast; verify current requirements before relying on this for real work.
