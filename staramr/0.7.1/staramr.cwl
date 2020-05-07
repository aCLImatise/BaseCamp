class: CommandLineTool
id: staramr.cwl
inputs:
- id: verbose
  doc: Turn on verbose logging [False].
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- staramr
