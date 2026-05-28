# Grounded UI

<p align="center">
  <a href="https://github.com/blue-1ms/grounded-ui/blob/main/LICENSE"><img src="https://img.shields.io/github/license/blue-1ms/grounded-ui?style=for-the-badge" alt="License"></a>
  <img src="https://img.shields.io/badge/Codex-skill-111827?style=for-the-badge" alt="Codex skill">
  <img src="https://img.shields.io/badge/UI-grounded-0f766e?style=for-the-badge" alt="Grounded UI">
</p>

A Codex skill for product interfaces that feel designed around real work, not generated decoration.

Grounded UI helps AI coding agents design and review SaaS apps, admin dashboards, internal tools, settings pages, data tables, forms, editors, and other workflow-heavy product surfaces. It keeps the useful part of anti-generic UI guidance without turning every interface into the same rigid visual template.

## Install

### Recommended: project install

Run this from the project where you want Grounded UI available:

```bash
npx skills add blue-1ms/grounded-ui
```

The skills CLI installs the skill into the current project's agent skill directory. Restart your AI coding agent after installing so the new skill is picked up.

### Codex fallback: global install

If you want a direct global Codex install or update without the skills CLI:

```bash
curl -fsSL https://raw.githubusercontent.com/blue-1ms/grounded-ui/main/install.sh | bash
```

This installs the skill into:

```text
${CODEX_HOME:-~/.codex}/skills/grounded-ui
```

## Usage

Ask naturally, or invoke the skill explicitly:

```text
Use $grounded-ui to redesign this dashboard.
```

```text
Use $grounded-ui to review this settings page for generic AI UI patterns.
```

```text
Use $grounded-ui while building this admin table and filter workflow.
```

## What It Does

- Starts from the user's real workflow, not decorative layout tropes.
- Preserves existing product tokens, components, typography, spacing, and brand rules.
- Favors scannable density, predictable controls, accessible states, and stable responsive structure.
- Catches common AI UI habits such as glass panels, glow haze, fake charts, over-rounded cards, ornamental labels, and dashboard hero sections.
- Allows exceptions for brand, domain, and explicit user direction.

## When To Use

Use Grounded UI for:

- SaaS apps and internal tools
- admin dashboards and operations consoles
- settings pages, account flows, and forms
- data tables, analytics views, filters, and task queues
- editors, builders, toolbars, sidebars, and workflow surfaces
- frontend UI review for HTML, CSS, React, Vue, Svelte, Tailwind, shadcn/ui, or similar code

## When Not To Use

Do not use it as the primary style guide for:

- games
- editorial sites
- art-directed brand pages
- portfolios
- ecommerce storytelling pages
- highly expressive visual experiences

You can still ask for a restrained treatment in those contexts, but it should be an explicit choice.

## Repository Structure

```text
grounded-ui/
|-- SKILL.md
|-- agents/
|   `-- openai.yaml
|-- install.sh
|-- skill.json
|-- LICENSE
`-- README.md
```

## Development

Validate the skill before publishing changes:

```bash
python3 /path/to/skill-creator/scripts/quick_validate.py .
```

The skill is intentionally small. Add references or scripts only when the guidance becomes too large for `SKILL.md` or needs deterministic tooling.
