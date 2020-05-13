class: CommandLineTool
id: NCBImeta.py.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: flat
  doc: ''
  type: boolean
  inputBinding:
    prefix: --flat
outputs: []
cwlVersion: v1.1
baseCommand:
- NCBImeta.py
