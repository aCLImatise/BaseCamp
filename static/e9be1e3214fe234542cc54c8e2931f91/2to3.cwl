class: CommandLineTool
id: 2to3.cwl
inputs:
- id: doc_tests_only
  doc: Fix up doctests only
  type: boolean
  inputBinding:
    prefix: --doctests_only
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
  doc: Prevent a transformation from being run
  type: string
  inputBinding:
    prefix: --nofix
- id: list_fixes
  doc: List available transformations
  type: boolean
  inputBinding:
    prefix: --list-fixes
- id: print_function
  doc: Modify the grammar so that print() is a function
  type: boolean
  inputBinding:
    prefix: --print-function
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
  doc: Don't write backups for modified files
  type: boolean
  inputBinding:
    prefix: --nobackups
- id: output_dir
  doc: Put output files in this directory instead of overwriting the input files.  Requires
    -n.
  type: string
  inputBinding:
    prefix: --output-dir
- id: write_unchanged_files
  doc: Also write files even if no changes were required (useful with --output-dir);
    implies -w.
  type: boolean
  inputBinding:
    prefix: --write-unchanged-files
- id: add_suffix
  doc: "Append this string to all output filenames. Requires -n if non-empty.  ex:\
    \ --add-suffix='3' will generate .py3 files."
  type: string
  inputBinding:
    prefix: --add-suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- 2to3
