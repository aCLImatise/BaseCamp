class: CommandLineTool
id: ../../../perror.cwl
inputs:
- id: info
  doc: Synonym for --help.
  type: boolean
  inputBinding:
    prefix: --info
- id: silent
  doc: Only print the error message.
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: Print error code and message (default). (Defaults to on; use --skip-verbose
    to disable.)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: error_code
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: error_code_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- perror
