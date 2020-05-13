class: CommandLineTool
id: futurize.cwl
inputs:
- id: unicode_literals
  doc: Add ``from __future__ import unicode_literals`` to implicitly convert all unadorned
    string literals '' into unicode strings
  type: boolean
  inputBinding:
    prefix: --unicode-literals
- id: fix
  doc: "Each FIX specifies a transformation; default: all. Either use '-f division\
    \ -f metaclass' etc. or use the fully-qualified module name: '-f lib2to3.fixes.fix_types\
    \ -f libfuturize.fixes.fix_unicode_keep_u'"
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
  doc: Don't write backups for modified files.
  type: boolean
  inputBinding:
    prefix: --nobackups
- id: output_dir
  doc: Put output files in this directory instead of overwriting the input files.  Requires
    -n. For Python >= 2.7 only.
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
  doc: "Append this string to all output filenames. Requires -n if non-empty. For\
    \ Python >= 2.7 only.ex: --add- suffix='3' will generate .py3 files."
  type: string
  inputBinding:
    prefix: --add-suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- futurize
