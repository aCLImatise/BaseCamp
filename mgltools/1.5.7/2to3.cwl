#!/usr/bin/env cwl-runner

baseCommand:
- 2to3
class: CommandLineTool
cwlVersion: v1.0
id: 2to3
inputs:
- doc: Fix up doctests only
  id: doc_tests_only
  inputBinding:
    prefix: --doctests_only
  type: boolean
- doc: 'Each FIX specifies a transformation; default: all'
  id: fix
  inputBinding:
    prefix: --fix
  type: string
- doc: Run 2to3 concurrently
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: Prevent a transformation from being run
  id: no_fix
  inputBinding:
    prefix: --nofix
  type: string
- doc: List available transformations
  id: list_fixes
  inputBinding:
    prefix: --list-fixes
  type: boolean
- doc: Modify the grammar so that print() is a function
  id: print_function
  inputBinding:
    prefix: --print-function
  type: boolean
- doc: More verbose logging
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Don't show diffs of the refactoring
  id: no_diffs
  inputBinding:
    prefix: --no-diffs
  type: boolean
- doc: Write back modified files
  id: write
  inputBinding:
    prefix: --write
  type: boolean
- doc: Don't write backups for modified files
  id: no_backups
  inputBinding:
    prefix: --nobackups
  type: boolean
- doc: Put output files in this directory instead of overwriting the input files.  Requires
    -n.
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
- doc: Also write files even if no changes were required (useful with --output-dir);
    implies -w.
  id: write_unchanged_files
  inputBinding:
    prefix: --write-unchanged-files
  type: boolean
- doc: "Append this string to all output filenames. Requires -n if non-empty.  ex:\
    \ --add-suffix='3' will generate .py3 files."
  id: add_suffix
  inputBinding:
    prefix: --add-suffix
  type: string
