class: CommandLineTool
id: ../../../flowcraft.cwl
inputs:
- id: debug
  doc: Set log to debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- flowcraft
