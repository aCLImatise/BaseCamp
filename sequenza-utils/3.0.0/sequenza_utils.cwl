class: CommandLineTool
id: sequenza_utils.cwl
inputs:
- id: verbose
  doc: Show all logging information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
