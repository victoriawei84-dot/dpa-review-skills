# DPA / Cross-Border Data Transfer Review

A practical, checklist-driven guide to reviewing Data Processing Agreements (DPAs), DPA addenda, and HIPAA Business Associate Agreements against four regulatory regimes, plus a dedicated comparison of GDPR and China's PIPL for cross-border data flows — the regime combination that comes up constantly for any company operating in both markets.

## Start here

- **[`SKILL.md`](SKILL.md)** — the review methodology: a three-pass process (document orientation → regime-specific term checking → compile checklist and posture) used consistently across every regime below.
- **[`reference/`](reference)** — the regime-by-regime requirement checklists. Read the one(s) relevant to your deal:
  - [`gdpr_requirements.md`](reference/gdpr_requirements.md) — EU/UK GDPR Article 28.
  - [`us_state_privacy_requirements.md`](reference/us_state_privacy_requirements.md) — CCPA/CPRA, VCDPA, CPA, CTDPA, and similar.
  - [`hipaa_baa_requirements.md`](reference/hipaa_baa_requirements.md) — HIPAA Business Associate Agreements.
  - [`general_commercial_requirements.md`](reference/general_commercial_requirements.md) — regime-neutral commercial DPA terms.
  - [`pipl_requirements.md`](reference/pipl_requirements.md) — China's PIPL: Article 21 entrusted-processing agreements and the Article 38 cross-border transfer mechanisms (security assessment / Standard Contract / certification).
- **[`cross-border-transfer-comparison.md`](cross-border-transfer-comparison.md)** — GDPR vs. PIPL side by side: where the two regimes' processor-agreement terms actually line up vs. diverge, why their cross-border transfer mechanisms differ structurally, why PIPL's impact-assessment and breach-notification triggers are more mechanical and less risk-gated than GDPR's, and a 5-point checklist for upgrading a GDPR-only DPA to also cover a PIPL-regulated counterparty.
- **[`examples/`](examples)** — fully worked review examples (GDPR, US state privacy).
- **[`acceptance/`](acceptance)** — sample DPA/BAA text fixtures with "golden" expected-output checklists, useful for testing your own review against a known answer.
- **[`test-plan.md`](test-plan.md)** — the acceptance-test scenarios this checklist methodology was validated against.

## Using this as a live Skill in Claude or ChatGPT

This repo isn't just reading material — `SKILL.md` + `reference/` + `examples/` together are a working **Agent Skill** (the open `SKILL.md` format Anthropic published, now also adopted by OpenAI's Codex CLI and reportedly rolling out to ChatGPT). If you've never used Skills before, here's what that actually means and how to turn it on, in whichever tool you use.

**What a Skill is, in one sentence:** it's a folder — `SKILL.md` plus supporting files — that teaches an AI model a specific, repeatable workflow (here: "review this DPA against regime X, using this exact checklist and output format") instead of you re-explaining the task from scratch every time.

**Fastest way to try it (works everywhere, no setup):** open a new chat, paste in the full text of [`SKILL.md`](SKILL.md) as your first message, then attach the relevant file(s) from [`reference/`](reference) (e.g., `gdpr_requirements.md`, `pipl_requirements.md`) and the DPA you want reviewed. This works in plain Claude.ai, ChatGPT, or any chat tool with file upload — no Skills feature required.

**To install it as an actual Skill, so you don't have to paste it in every time:**

- **Claude.ai (web/desktop):** Settings → Capabilities → enable Skills (requires a paid plan with code execution on) → upload `dist/dpa-checklist-review.zip`. Once enabled, just ask Claude to review a DPA and it will pull in the Skill automatically; menu wording has shifted before, so if "Capabilities" isn't there, look for "Skills" directly in Settings.
- **Claude Code:** skip the zip — unzip (or just copy) the `dpa-checklist-review/` folder straight into `~/.claude/skills/` (personal, all your projects) or `.claude/skills/` inside a specific project (shared with that project only). Claude Code reads it straight from disk; nothing to upload.
- **Claude API:** `POST` the zip to the Skills API (`/v1/skills`) and reference the returned skill ID in your requests.
- **OpenAI Codex CLI:** same folder-and-`SKILL.md` pattern — drop `dpa-checklist-review/` into `.agents/skills/`.
- **ChatGPT:** OpenAI has been rolling out a Skills feature built on the same open `SKILL.md` standard; check ChatGPT's current settings for a "Skills" option and upload the same zip. If it's not available yet on your account, use a **Custom GPT** instead: create one, paste everything in `SKILL.md` *below* the `---` frontmatter block into the GPT's "Instructions" field, and upload the `reference/` and `examples/` `.md` files as "Knowledge" files — this reproduces the same behavior without needing native Skills support.


## Authorship

This guide combines two things: a review methodology and a set of regime checklists originally built by [LegalQuants](https://github.com/LegalQuants/lq-ai) for their open-source (Apache 2.0) legal-AI platform, and original PIPL research plus a comparative GDPR/PIPL analysis that I wrote to extend it — the upstream project explicitly scopes PIPL out of its initial release.

Rather than keep these in separate folders, each file states its own authorship inline, right after its title, so it reads as one continuous guide:

- `reference/gdpr_requirements.md`, `reference/us_state_privacy_requirements.md`, `reference/hipaa_baa_requirements.md`, `reference/general_commercial_requirements.md`, `SKILL.md`, `examples/`, `acceptance/`, `test-plan.md` — **written by LegalQuants**, reproduced unmodified under Apache 2.0. See [`NOTICE`](NOTICE).
- `reference/pipl_requirements.md` and `cross-border-transfer-comparison.md` — **written by me **, original research; sources cited at the end of each file.
