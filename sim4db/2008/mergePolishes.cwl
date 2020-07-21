class: CommandLineTool
id: ../../../mergePolishes.cwl
inputs:
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
- id: cdna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cdna_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cdna_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mergePolishes
