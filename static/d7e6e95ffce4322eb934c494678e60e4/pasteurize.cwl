class: CommandLineTool
id: pasteurize.cwl
inputs:
- id: all_imports
  doc: Adds all __future__ and future imports to each module
  type: boolean
  inputBinding:
    prefix: --all-imports
- id: fix
  doc: 'Each FIX specifies a transformation; default: all'
  type: string
  inputBinding:
    prefix: --fix
- id: processes
  doc: Run 2to3 concurrently
  type: string
  inputBinding:
    prefix: --processes
- id: no_fix
  doc: Prevent a fixer from being run.
  type: string
  inputBinding:
    prefix: --nofix
- id: list_fixes
  doc: List available transformations
  type: boolean
  inputBinding:
    prefix: --list-fixes
- id: verbose
  doc: More verbose logging
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_diffs
  doc: Don't show diffs of the refactoring
  type: boolean
  inputBinding:
    prefix: --no-diffs
- id: write
  doc: Write back modified files
  type: boolean
  inputBinding:
    prefix: --write
- id: no_backups
  doc: Don't write backups for modified files.
  type: boolean
  inputBinding:
    prefix: --nobackups
outputs: []
cwlVersion: v1.1
baseCommand:
- pasteurize
