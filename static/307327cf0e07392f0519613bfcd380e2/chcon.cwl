class: CommandLineTool
id: chcon.cwl
inputs:
- id: in_dereference
  doc: "affect the referent of each symbolic link (this is\nthe default), rather than\
    \ the symbolic link itself"
  type: boolean
  inputBinding:
    prefix: --dereference
- id: in_user
  doc: set user USER in the target security context
  type: string
  inputBinding:
    prefix: --user
- id: in_role
  doc: set role ROLE in the target security context
  type: string
  inputBinding:
    prefix: --role
- id: in_type
  doc: set type TYPE in the target security context
  type: string
  inputBinding:
    prefix: --type
- id: in_range
  doc: set range RANGE in the target security context
  type: string
  inputBinding:
    prefix: --range
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
  doc: "use RFILE's security context rather than specifying\na CONTEXT value"
  type: File
  inputBinding:
    prefix: --reference
- id: in_recursive
  doc: operate on files and directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_verbose
  doc: output a diagnostic for every file processed
  type: File
  inputBinding:
    prefix: --verbose
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
- chcon
