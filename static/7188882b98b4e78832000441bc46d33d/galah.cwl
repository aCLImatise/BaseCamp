class: CommandLineTool
id: galah.cwl
inputs:
- id: quiet
  doc: Unless there is an error, do not print logging information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Print extra debug logging information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- galah
