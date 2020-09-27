class: CommandLineTool
id: chgrp.cwl
inputs:
- id: in_changes
  doc: like verbose but report only when a change is made
  type: boolean
  inputBinding:
    prefix: --changes
- id: in_silent
  doc: suppress most error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: output a diagnostic for every file processed
  type: File
  inputBinding:
    prefix: --verbose
- id: in_dereference
  doc: "affect the referent of each symbolic link (this is\nthe default), rather than\
    \ the symbolic link itself"
  type: boolean
  inputBinding:
    prefix: --dereference
- id: in_no_preserve_root
  doc: do not treat '/' specially (the default)
  type: boolean
  inputBinding:
    prefix: --no-preserve-root
- id: in_preserve_root
  doc: fail to operate recursively on '/'
  type: boolean
  inputBinding:
    prefix: --preserve-root
- id: in_reference
  doc: "use RFILE's group rather than specifying a\nGROUP value"
  type: File
  inputBinding:
    prefix: --reference
- id: in_recursive
  doc: operate on files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_command_line_argument
  doc: "if a command line argument is a symbolic link\nto a directory, traverse it"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_traverse_symbolic_link
  doc: traverse every symbolic link to a directory
  type: boolean
  inputBinding:
    prefix: -L
- id: in_encountered
  doc: -P                     do not traverse any symbolic links (default)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: output a diagnostic for every file processed
  type: File
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- chgrp
