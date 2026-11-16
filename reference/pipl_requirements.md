# China PIPL — Data Processing / Cross-Border Transfer Requirements

> _Section author: me — original research and writing. Not part of the upstream `lq-ai` skill, which explicitly scopes PIPL out of its v1.0.0 release (see `SKILL.md`, "What this skill does not do"). Written in the same checklist format as the GDPR/US-state/HIPAA files in this folder so it reads as one continuous reference, but the content itself is new and independently sourced (see citations at the end of this file)._

This covers two things that are easy to conflate and shouldn't be: (1) the **entrusted-processing agreement** required under PIPL Article 21 when a personal information handler (个人信息处理者, roughly GDPR's "controller") uses a third party to process data on its behalf, and (2) the **cross-border transfer mechanisms** required under PIPL Chapter III (Articles 38–43) when personal information leaves mainland China. A single real-world DPA for a China-facing deal usually needs to address both.

**Caveat on sourcing:** Chinese data-protection rulemaking moves fast and English-language secondary sources disagree on details (thresholds, validity periods). Everything below is accurate to the best of available research as of this writing, cites the specific PIPL article or CAC measure it's drawn from, and flags the few points where sources conflicted. For anything load-bearing in an actual deal, verify against the current CAC/NPC Chinese-language text or PRC counsel — do not rely on this file alone.

## Threshold question: entrustment vs. third-party provision

PIPL draws a sharper line here than GDPR draws between "processor" and "controller." Two different PIPL mechanisms can apply to what looks like the same commercial relationship, and they have different contractual consequences:

- **Entrusted processing (委托处理, Article 21).** The handler directs a third party to process personal information on the handler's behalf, for the handler's purposes (e.g., a cloud vendor, a payroll processor). This is the closest PIPL analog to a GDPR Article 28 processor relationship, and is the primary subject of this file.
- **Provision to a third party (向第三方提供, Article 23).** The handler shares personal information with a third party who will process it for *that third party's own purposes* (e.g., selling a customer list to a partner for the partner's independent marketing use). This requires the handler to separately inform the individual of the recipient's identity, contact details, processing purpose/method, and data categories, **and obtain separate consent** — a standalone consent event, not satisfiable by a general privacy-policy disclosure. Do not use an entrusted-processing (Article 21) agreement to paper over what is actually a third-party-provision (Article 23) relationship; regulators look at substance, not label.

Confirm which relationship is actually in play before applying the Article 21 checklist below. If it's Article 23, the checklist here does not apply — consent design is the operative question, not contract terms.

## Required terms under Article 21 (entrusted-processing agreement)

Article 21 requires the handler and the entrusted party to agree, by contract, on:

### P1. Purpose, duration, and method of processing
**Required:** The agreed-upon processing purpose, the period for which the entrusted party will process the data, and the method/means of processing.
**Common deficiencies:** Purpose stated only by reference to an external services agreement that itself doesn't specify a data-processing purpose; no stated duration (should track the underlying commercial relationship, not be open-ended).

### P2. Categories of personal information to be handled
**Required:** Specific enumeration of what personal information categories are in scope — PIPL is consent- and purpose-specific, so vague "any data provided" language is a weaker position here than it already is under GDPR.
**Common deficiencies:** No enumeration; failure to separately flag "sensitive personal information" (敏感个人信息 — biometric data, religious belief, specific identity, medical health, financial accounts, location tracking, and any minor's data) which triggers heightened obligations (separate consent, mandatory PIA, see below) wherever it appears in the processing scope.

### P3. Protective measures (safeguards)
**Required:** The security measures the entrusted party commits to maintain. Article 51 (handler's own general security-duty provision, flowed down contractually) expects: internal management systems and operating procedures; classified/tiered management of personal information by sensitivity; technical measures such as encryption and de-identification; defined processing-authority limits with staff security training; and a personal-information security-incident response plan.
**Compliant pattern:** A security annex comparable to what a GDPR Article 32 annex would contain (encryption at rest/in transit, access control, incident response), explicitly cross-referenced to the handler's PIPL Article 51 obligations rather than generic "industry standard" language.
**Common deficiencies:** Security commitments copied from a GDPR DPA template without confirming they also satisfy the tiered/classified-management expectation, which is a PIPL-specific emphasis not identical to GDPR's risk-based Article 32 standard.

### P4. Rights and obligations of both parties
**Required:** Beyond the processing-scope terms above, the contract should address the handler's ongoing supervisory role (the handler remains responsible for supervising the entrusted party's processing activities — this is an active, not passive, obligation under Article 21) and the entrusted party's corresponding duties.

### P5. Scope restriction — no processing beyond the agreed purpose/method
**Required:** Article 21 expressly prohibits the entrusted party from processing personal information beyond the agreed purpose and method. This should be an affirmative contractual restriction, not merely implied by the purpose/method clause above.
**Common deficiencies:** Broad "and any other purpose reasonably related to the Services" carve-outs, which functionally undo the restriction.

### P6. Re-entrustment (sub-processing) requires the handler's prior consent
**Required:** The entrusted party may not sub-entrust (re-entrust) processing to another party without the handler's consent. This is a stricter default than GDPR Article 28(3)(d), which permits general written authorization with a notice-and-objection mechanism — PIPL's text reads as requiring affirmative consent for re-entrustment, not merely notice.
**Compliant pattern:** Either (a) no re-entrustment permitted without specific case-by-case written consent, or (b) a general-authorization mechanism with notice and objection rights modeled on the GDPR approach — acceptable in practice but flag as a judgment call where the agreement relies on (b), since Article 21's plain text is closer to (a).
**Common deficiencies:** Sub-processor lists disclosed only "on request," silent re-entrustment rights, or GDPR-style general-authorization language presented as self-evidently sufficient without flagging the gap to (a).

### P7. Return or deletion at termination
**Required:** Upon contract termination or invalidation, the entrusted party must return the personal information to the handler or delete it, and must not retain copies.
**Common deficiencies:** Processor-side discretion to choose return vs. deletion (Article 21, like GDPR Article 28(3)(g), implies the choice belongs upstream to the handler, not the processor); carve-outs allowing retention for the entrusted party's "legitimate business records" with no PIPL legal basis.

## Personal Information Protection Impact Assessment (PIA) — Articles 55–56

A PIA is PIPL's analog to a GDPR DPIA, but with a materially broader, more mechanical trigger — this is one of the biggest practical differences from GDPR and worth flagging explicitly in any review.

**When required (Article 55) — any of:**
- Processing sensitive personal information.
- Using personal information for automated decision-making.
- Entrusting the processing of personal information, providing personal information to a third party, or disclosing personal information. **Note:** this means a PIA is required essentially every time an Article 21 entrusted-processing or Article 23 third-party-provision relationship is created — unlike GDPR, where a DPIA is only required when the processing is "likely to result in a high risk," PIPL does not gate this on a risk threshold for these categories.
- Providing personal information abroad.
- Other personal-information processing activities with a significant impact on individuals.

**Required PIA content (Article 56):** whether the processing purpose and method are lawful, legitimate, and necessary; the impact on individuals' rights and interests and the attendant security risks; and whether the protective measures taken are legal, effective, and commensurate with the risk. The PIA report and processing records must be retained for at least three years.

**Common deficiencies in review:** A DPA that addresses entrustment or cross-border transfer with no reference to a PIA having been (or needing to be) conducted; treating the GDPR DPIA the organization already has on file as sufficient without confirming it covers the PIPL-specific trigger conditions and content requirements above.

## Breach notification — Article 57

**Required:** Upon occurrence, or a real risk, of leakage, tampering, or loss of personal information, the handler must **immediately** take remedial measures, and notify both the relevant regulatory department and the affected individuals.

**Notification content:** categories of information involved, cause of the incident, possible harm, remedial measures already taken, measures individuals can take to mitigate harm, and contact information for follow-up.

**The one real risk-based carve-out:** if the handler's remedial measures can effectively avoid harm to individuals, the handler *may* omit notifying individuals (regulator notification is not similarly excused) — but the regulator can override this and require individual notification anyway.

**How this compares to GDPR, for a reviewer's calibration:** GDPR Article 33 gates controller-to-authority notification on a risk threshold ("unless the breach is unlikely to result in a risk") and gates individual notification on a higher threshold ("high risk"), both within 72 hours. PIPL's default is closer to "notify both the regulator and individuals, immediately, unless you can show the narrow harm-avoidance exception applies" — a materially more notification-forward default. A DPA breach-notification clause drafted only to a GDPR 72-hour/risk-gated standard will likely under-deliver against PIPL Article 57 if the handler is also PIPL-regulated.

## Cross-border transfer mechanisms — Article 38 and the CAC implementing measures

Where personal information collected or generated in mainland China needs to leave the country, PIPL Article 38 requires one of three mechanisms. This is the single area where PIPL diverges furthest from the GDPR's conceptually similar (adequacy / SCCs / BCRs) framework, because the Chinese mechanisms involve **mandatory government filing or approval**, which GDPR's SCC route does not.

### The three routes

1. **CAC security assessment** — a government pre-approval process, required for the highest-volume/highest-sensitivity transfers (see thresholds below), transfers of data classified as "important data" (重要数据), and transfers by critical information infrastructure operators (CIIOs).
2. **Standard Contract filing** — the handler executes the CAC's mandatory-form Standard Contract (filed with the CAC rather than freely negotiated, per the *Measures on Standard Contracts for the Export of Personal Information*, issued Feb. 24, 2023, effective June 1, 2023) with the overseas recipient, and files it with the provincial-level CAC within 10 working days of it taking effect, together with a personal-information-protection impact self-assessment report.
3. **Personal information protection certification** — third-party certification against national standards, issued by a CAC-accredited body; historically the least-used route, though a newer CAC/SAMR certification measure aimed at mid-scale exporters was reported effective in early 2026 — **unverified against the primary text; confirm current status before relying on this route.**

### Current volume thresholds (post–March 2024 relaxation)

The CAC's *Provisions on Promoting and Regulating Cross-Border Data Flows* (effective March 22, 2024) raised the thresholds that trigger the heavier mechanisms. Counted cumulatively from January 1 of the current year (not per-transfer):

- **Security assessment required:** transfers of data classified as "important data"; or personal information of **more than 1,000,000 individuals**; or sensitive personal information of **more than 10,000 individuals**.
- **Standard Contract or certification required (below the security-assessment threshold):** non-sensitive personal information of **100,000 to 1,000,000 individuals**.
- **Likely exempt from all three mechanisms:** non-sensitive personal information of fewer than 100,000 individuals; and certain categorical exemptions reported post-2024, including transfers necessary to perform a contract to which the individual is a party (e.g., cross-border e-commerce, travel booking), and cross-border HR management of an employer's own employees.

**Flag explicitly in any review:** sources disagree on some adjacent details (e.g., the security-assessment result's validity period — two years vs. three years appears in different summaries). Treat the threshold figures above as the well-corroborated headline rule, and treat anything more granular as needing primary-source confirmation.

### Standard Contract specifics worth checking in a DPA review

- **Eligibility exclusion:** a handler cannot use the Standard Contract route at all if it is a CIIO, or otherwise meets the security-assessment thresholds above — in that case, the Standard Contract route is unavailable and a security assessment is mandatory regardless of what the parties would prefer to use.
- **Mandatory template, annex only:** the parties must use the CAC's template contract; they may attach supplementary clauses as an exhibit, but supplementary clauses cannot conflict with the standard template, which controls on conflict. This is the inverse of how a negotiated GDPR DPA typically works — there is no freely negotiable core here.
- **Governing law and jurisdiction:** the template specifies **PRC law** governs the contract, and requires the overseas recipient to accept PRC court/arbitration jurisdiction for disputes arising from it. A DPA reviewer should expect and not flag this as unusual (it's mandated by the template, not a negotiating position); it is, however, worth explicitly noting to a business team used to GDPR SCCs' more flexible governing-law provisions.
- **Mandatory filing:** executed contract plus the impact self-assessment report must be filed with the provincial CAC within 10 working days — there is no equivalent filing step under the GDPR SCC route (GDPR SCCs are self-executing once signed; no regulator pre-clearance or filing is required for most transfers).

### Severity calibration for PIPL findings

- **Critical:** no cross-border transfer mechanism addressed at all where Article 38 plainly applies (any transfer of PI collected in mainland China to a recipient outside it); Article 21 agreement silent on re-entrustment consent where sub-processing is known to occur; no PIA conducted or referenced where one of the Article 55 triggers is clearly met.
- **Material:** Standard Contract referenced but not confirmed filed with the provincial CAC; breach-notification clause drafted only to GDPR's risk-gated 72-hour standard without a PIPL-conforming fallback; re-entrustment handled via GDPR-style general authorization without flagging the Article 21 consent-vs-notice gap.
- **Minor:** drafting that doesn't track PIPL's exact terminology (e.g., calling the entrusted party a "processor" rather than "entrusted party") where the substance is otherwise compliant; stylistic inconsistency between the PIPL-specific annex and the rest of a multi-regime DPA.

## What this file does not do

Same posture as the rest of this repository's reference material: this is a drafting/review aid, not a PRC legal opinion. PIPL enforcement guidance, the CAC's non-public interpretive practice, and sector-specific rules (e.g., for financial institutions, or "important data" sector catalogs issued by individual industry regulators) are outside its scope. For a live cross-border deal, get PRC counsel.

## Sources

- [Personal Information Protection Law of the PRC — full translation (China Briefing)](https://www.china-briefing.com/news/the-prc-personal-information-protection-law-final-a-full-translation/)
- [PIPL Article 21 (xllawconsulting translation)](https://pipl.xllawconsulting.com/personal-information-protection-law-of-the-peoples-republic-of-china-pipl/chapter-ii-personal-information-processing-rules/section-1-general-rules/article-21/)
- [China Law Translate — Personal Information Protection Law](https://www.chinalawtranslate.com/en/Personal-Information-Protection-Law/)
- [China Law Translate — Measures on Standard Contracts for the Export of Personal Information](https://www.chinalawtranslate.com/en/personal-information-export-contract/)
- [WilmerHale — China Promulgates Standard Contract Clause Measures for Export of Personal Information](https://www.wilmerhale.com/insights/client-alerts/20230302-china-promulgates-standard-contract-clause-measures-for-export-of-personal-information)
- [Clifford Chance — China Finalises Standard Contract on Cross-Border Transfer of Personal Information](https://www.cliffordchance.com/content/dam/cliffordchance/briefings/2023/03/china-finalises-standard-contract.pdf)
- [Faegre Drinker — China Releases New Regulation on Cross-Border Data Transfers (2024)](https://www.faegredrinker.com/en/insights/publications/2024/4/china-releases-new-regulation-on-cross-border-data-transfers)
- [Haynes Boone — China Releases New Rules to Ease Burden on Cross-Border Transfer of Data](https://www.haynesboone.com/getcontentasset/7eb8f2bd-2afc-4f1c-82a4-9a6dd50212e4/141d77fc-2e06-49eb-b14c-2ff58f5ce730/china%20releases%20new%20rules%20to%20ease%20burden%20on%20cross-border%20transfer%20of%20data.pdf)
- [R&P China Lawyers — China Finalizes Certification Route for Cross-Border Data Transfer](https://www.rplawyers.com/china-finalizes-certification-route-for-cross-border-data-transfer/)
