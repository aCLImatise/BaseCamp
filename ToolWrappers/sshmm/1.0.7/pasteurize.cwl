class: CommandLineTool
id: pasteurize.cwl
inputs:
- id: in_all_imports
  doc: Adds all __future__ and future imports to each module
  type: boolean?
  inputBinding:
    prefix: --all-imports
- id: in_fix
  doc: 'Each FIX specifies a transformation; default: all'
  type: string?
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
- pasteurize
