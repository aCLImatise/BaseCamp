class: CommandLineTool
id: chromosomer.cwl
inputs:
- id: debug
  doc: show debugging messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
