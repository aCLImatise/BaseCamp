class: CommandLineTool
id: model_predict.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- model
- predict
