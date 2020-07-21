class: CommandLineTool
id: ../../../ntdpal.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- ntdpal
