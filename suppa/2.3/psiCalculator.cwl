class: CommandLineTool
id: ../../../psiCalculator.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- psiCalculator.py
