class: CommandLineTool
id: futurize.cwl
inputs:
- id: in_all_imports
  doc: Add all __future__ and future imports to each module
  type: boolean?
  inputBinding:
    prefix: --all-imports
- id: in_stage_one
  doc: "Modernize Python 2 code only; no compatibility with\nPython 3 (or dependency\
    \ on ``future``)"
  type: boolean?
  inputBinding:
    prefix: --stage1
- id: in_stage_two
  doc: "Take modernized (stage1) code and add a dependency on\n``future`` to provide\
    \ Py3 compatibility."
  type: boolean?
  inputBinding:
    prefix: --stage2
- id: in_both_stages
  doc: Apply both stages 1 and 2
  type: boolean?
  inputBinding:
    prefix: --both-stages
- id: in_unicode_literals
  doc: "Add ``from __future__ import unicode_literals`` to\nimplicitly convert all\
    \ unadorned string literals ''\ninto unicode strings"
  type: boolean?
  inputBinding:
    prefix: --unicode-literals
- id: in_fix
  doc: "Each FIX specifies a transformation; default: all.\nEither use '-f division\
    \ -f metaclass' etc. or use the\nfully-qualified module name: '-f\nlib2to3.fixes.fix_types\
    \ -f\nlibfuturize.fixes.fix_unicode_keep_u'"
  type: long?
  inputBinding:
    prefix: --fix
- id: in_processes
  doc: Run 2to3 concurrently
  type: long?
  inputBinding:
    prefix: --processes
- id: in_no_fix
  doc: Prevent a fixer from being run.
  type: string?
  inputBinding:
    prefix: --nofix
- id: in_list_fixes
  doc: List available transformations
  type: boolean?
  inputBinding:
    prefix: --list-fixes
- id: in_print_function
  doc: Modify the grammar so that print() is a function
  type: boolean?
  inputBinding:
    prefix: --print-function
- id: in_verbose
  doc: More verbose logging
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_diffs
  doc: Don't show diffs of the refactoring
  type: boolean?
  inputBinding:
    prefix: --no-diffs
- id: in_write
  doc: Write back modified files
  type: boolean?
  inputBinding:
    prefix: --write
- id: in_no_backups
  doc: Don't write backups for modified files.
  type: boolean?
  inputBinding:
    prefix: --nobackups
- id: in_output_dir
  doc: "Put output files in this directory instead of\noverwriting the input files.\
    \  Requires -n. For Python\n>= 2.7 only."
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_write_unchanged_files
  doc: "Also write files even if no changes were required\n(useful with --output-dir);\
    \ implies -w."
  type: boolean?
  inputBinding:
    prefix: --write-unchanged-files
- id: in_add_suffix
  doc: "Append this string to all output filenames. Requires\n-n if non-empty. For\
    \ Python >= 2.7 only.ex: --add-\nsuffix='3' will generate .py3 files.\n"
  type: string?
  inputBinding:
    prefix: --add-suffix
- id: in_file_vertical_line_dir
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- futurize
