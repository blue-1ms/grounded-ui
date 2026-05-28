---
name: grounded-ui
description: Design and refine grounded, durable product interfaces for SaaS apps, admin dashboards, internal tools, settings pages, data tables, forms, editors, and other workflow-heavy frontend UI. Use when generating or reviewing HTML, CSS, React, Vue, Svelte, Tailwind, shadcn/ui, or similar UI code where the goal is a professional interface without generic AI aesthetics. Do not use as the primary style guide for games, editorial sites, art-directed brand pages, portfolios, ecommerce product storytelling, or highly expressive visual experiences unless the user explicitly asks for a restrained product-tool treatment.
---

# Grounded UI

## Purpose

Build interfaces that feel designed around real work: clear, scannable, accessible, and specific to the user's workflow. Avoid generic AI UI habits without replacing them with a different rigid template.

Use the user's brief, existing app, and brand system as the source of truth. Treat this skill as a quality bar, not as a visual theme.

## Workflow

1. Inspect the existing UI before designing.
   - Read nearby components, CSS variables, Tailwind config, tokens, design-system components, screenshots, or Storybook examples when available.
   - Preserve established fonts, color roles, spacing, layout density, component APIs, and interaction patterns.

2. Classify the surface.
   - Dashboard or internal tool: prioritize navigation, tables, filters, task flows, readable density, and persistent actions.
   - Settings or forms: prioritize labels, validation, grouping, progressive disclosure, and predictable controls.
   - Data table or analytics: put real data structure first; make filters, sorting, status, and row actions obvious.
   - Editor or builder: prioritize canvas or work area, toolbars, selection states, keyboard ergonomics, and undoable actions.
   - Landing or marketing page: use this skill lightly; hero sections and expressive media are allowed when they communicate the product, offer, or brand.

3. Design from function outward.
   - Start with the user's primary task and the information hierarchy needed to complete it.
   - Make layout decisions explainable by scanning, comparison, repeated use, accessibility, or reduced cognitive load.
   - Use standard components when they fit. Add novelty only when it improves the workflow.

4. Implement with stable structure.
   - Use responsive constraints, explicit grid or flex behavior, and stable dimensions for controls, tables, boards, cards, and toolbars.
   - Keep text inside containers at all viewport sizes. Avoid overlaps, clipping, and controls that resize on hover.
   - Verify the local app visually after significant frontend changes.

## Visual Rules

- Color: Use existing project tokens first. If none exist, choose a neutral foundation with one functional accent and clear semantic colors. Ensure contrast is readable.
- Typography: Use the project's type system. If no type system exists, use a simple, readable sans-serif stack. Keep hierarchy useful, not theatrical.
- Spacing: Prefer consistent spacing scales and content density appropriate for repeated use. Avoid empty space that only exists to feel premium.
- Radius: Default to 4-8px for controls and containers. Use 12px only when it fits the product language. Avoid pill shapes unless the component convention calls for them.
- Shadows and depth: Use borders, background contrast, and spacing first. Use subtle shadows only when they clarify layering.
- Motion: Prefer short color, opacity, or state transitions. Avoid bouncy motion, decorative transforms, and movement that makes dense tools harder to use.
- Icons: Use functional icons at consistent sizes. Avoid decorative icon bubbles or badges unless they carry useful state.
- Copy: Write concise product language. Use headings when they orient the user. Remove ornamental eyebrows, fake operational slogans, and explanatory text that repeats what the UI already shows.

## Product Patterns

- Sidebars: Use a fixed, solid sidebar only when the information architecture needs it. Keep it straightforward, with clear active state and no detached floating shell.
- Headers: Keep page headers compact. Put search, filters, creation actions, and account controls where users expect them.
- Cards and panels: Use cards for repeated items, modals, and genuinely grouped information. Do not nest cards inside cards or turn every section into a framed object.
- Tables: Prefer plain rows, sticky or visible headers when useful, clear column alignment, and row actions that do not fight the data.
- Forms: Use labels above fields, direct helper text, clear errors, and button placement that matches the workflow.
- Charts: Use charts only when data comparison matters. Label axes and values honestly. Do not add fake charts to fill space.
- Status: Use badges, dots, and progress bars only when they encode a real state the user needs to act on.

## Anti-Pattern Check

Before finishing, remove or revise:

- glassmorphism, glow haze, radial blobs, decorative gradients, or frosted shells added by default
- oversized rounded cards, pill overload, and repeated rounded rectangles across every element
- metric-card grids used as the first instinct when the workflow really needs a table, list, or task queue
- fake charts, fake activity feeds, fake percentages, or decorative KPIs
- "premium dark SaaS" styling that relies on blue-black gradients and cyan accents without a product reason
- hero sections inside internal dashboards unless there is a real onboarding or empty-state reason
- decorative sidebar brand blocks, live badges, quota widgets, or workspace upsells that are not part of the task
- uppercase letter-spaced labels, `<small>` eyebrows, and tag badges used as decoration
- hover transforms, dramatic shadows, and motion that shifts dense UI around
- visible in-app text explaining styling choices, features, or how the generated UI was made

## Exceptions

Explicit user direction, brand guidelines, existing design systems, and domain expectations override this skill. Use expressive visuals for games, editorial work, art direction, fashion, entertainment, and marketing when the brief calls for them.

Do not treat any single company aesthetic as the destination. Linear, GitHub, Raycast, Stripe, and similar products are useful references for restraint and clarity, not templates to copy.

## Final Review

Check the finished UI against these questions:

- Can a target user understand the primary task within the first viewport?
- Does the layout prioritize real workflow content over decorative setup?
- Are controls, tables, forms, and navigation predictable and reachable?
- Does the mobile layout preserve usefulness instead of becoming a long stack of cards?
- Are contrast, focus states, loading states, empty states, and error states handled?
- Did every chart, badge, panel, icon, and sentence earn its place?
