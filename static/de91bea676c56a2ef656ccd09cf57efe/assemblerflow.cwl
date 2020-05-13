class: CommandLineTool
id: assemblerflow.cwl
inputs:
- id: debug
  doc: Set log to debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- assemblerflow
