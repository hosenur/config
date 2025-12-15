═══════════════════════════════════════════════════════
CONTEXT7 - LIBRARY DOCUMENTATION & CODE GENERATION
═══════════════════════════════════════════════════════

Always use Context7 when I need code generation, setup or
configuration steps, or library/API documentation. This means
you should automatically use the Context7 MCP tools to:

• Resolve library IDs first with `context7_resolve-library-id`
• Get library docs with `context7_get-library-docs`
• Use mode='code' for API references and examples
• Use mode='info' for conceptual guides and architecture

→ Do this automatically without me having to explicitly ask.
→ Prefer Context7 over general web searches for library-specific needs.

═══════════════════════════════════════════════════════
FAST APPLY - PRIMARY FILE EDIT TOOL - USE THIS FOR EDITS
═══════════════════════════════════════════════════════

IMPORTANT: Use `edit_file` over `str_replace` or full file writes.

This tool handles:
• Automatic indentation correction
• Fuzzy matching for code blocks
• Faster execution than alternatives

→ Prefer this over manual file editing tools.
→ Works with partial code snippets—no need for full file content.

═══════════════════════════════════════════════════════
FAST CONTEXT - PRIMARY CODE SEARCH TOOL - USE THIS FIRST
═══════════════════════════════════════════════════════

IMPORTANT: If you need to explore the codebase, use `warpgrep_codebase_search` FIRST instead of manually running search commands.

This tool runs parallel grep and readfile calls to locate relevant files and line ranges. Ideal for:
• "Find where authentication is handled"
• "Locate the payment processing logic"
• "Find the bug where users get redirected incorrectly"

Pass a targeted natural language query describing what you're trying to accomplish. Add inferred context when helpful.

→ Always start your search here.
→ Use classical search tools afterward if needed to fill gaps.

CANNOT BE CALLED IN PARALLEL - one invocation at a time.

═══════════════════════════════════════════════════════
DEV SERVER & BUILD - DO NOT START THESE
═══════════════════════════════════════════════════════

IMPORTANT: Never start the development server or perform builds.
I have them running externally.

• Do NOT run npm run dev, yarn dev, or equivalent
• Do NOT run npm run build, yarn build, or equivalent  
• Do NOT run any serve commands
• Do NOT run any compilation commands

These processes are managed externally and should not be
started through the agent workflow.

═══════════════════════════════════════════════════════
PACKAGE MANAGER - DETECT & INSTALL DEPENDENCIES
═══════════════════════════════════════════════════════

IMPORTANT: Always detect the package manager used before installing.

Check for lock files in this priority order:
• yarn.lock → use yarn install
• bun.lockb → use bun install  
• package-lock.json → use npm install
• pnpm-lock.yaml → use pnpm install

→ Never assume npm is the package manager.
→ Always check for lock files first.
→ Use the matching package manager for the project.