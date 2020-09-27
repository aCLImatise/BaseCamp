class: CommandLineTool
id: 2to3.cwl
inputs:
- id: in_doc_tests_only
  doc: Fix up doctests only
  type: boolean
  inputBinding:
    prefix: --doctests_only
- id: in_fix
  doc: 'Each FIX specifies a transformation; default: all'
  type: string
  inputBinding:
    prefix: --fix
- id: in_processes
  doc: Run 2to3 concurrently
  type: long
  inputBinding:
    prefix: --processes
- id: in_no_fix
  doc: Prevent a transformation from being run
  type: string
  inputBinding:
    prefix: --nofix
- id: in_list_fixes
  doc: List available transformations
  type: boolean
  inputBinding:
    prefix: --list-fixes
- id: in_print_function
  doc: Modify the grammar so that print() is a function
  type: boolean
  inputBinding:
    prefix: --print-function
- id: in_verbose
  doc: More verbose logging
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_no_diffs
  doc: Don't show diffs of the refactoring
  type: boolean
  inputBinding:
    prefix: --no-diffs
- id: in_write
  doc: Write back modified files
  type: boolean
  inputBinding:
    prefix: --write
- id: in_no_backups
  doc: Don't write backups for modified files
  type: boolean
  inputBinding:
    prefix: --nobackups
- id: in_output_dir
  doc: "Put output files in this directory instead of\noverwriting the input files.\
    \  Requires -n."
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_write_unchanged_files
  doc: "Also write files even if no changes were required\n(useful with --output-dir);\
    \ implies -w."
  type: boolean
  inputBinding:
    prefix: --write-unchanged-files
- id: in_add_suffix
  doc: "Append this string to all output filenames. Requires\n-n if non-empty.  ex:\
    \ --add-suffix='3' will generate\n.py3 files.\n"
  type: string
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
cwlVersion: v1.1
baseCommand:
- 2to3
