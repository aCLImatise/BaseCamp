class: CommandLineTool
id: psiPerGene.py.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
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
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- psiPerGene.py
