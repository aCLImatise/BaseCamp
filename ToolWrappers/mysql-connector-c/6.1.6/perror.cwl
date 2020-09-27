class: CommandLineTool
id: perror.cwl
inputs:
- id: in_info
  doc: Synonym for --help.
  type: boolean
  inputBinding:
    prefix: --info
- id: in_silent
  doc: Only print the error message.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: "Print error code and message (default).\n(Defaults to on; use --skip-verbose\
    \ to disable.)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_error_code
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_error_code_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- perror
