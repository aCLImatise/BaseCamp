class: CommandLineTool
id: ../../../smafa.cwl
inputs:
- id: in_quiet
  doc: Unless there is an error, do not print logging information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Print extra debug logging information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smafa
