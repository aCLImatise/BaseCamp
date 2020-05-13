class: CommandLineTool
id: perror.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- perror
