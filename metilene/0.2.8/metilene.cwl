class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metilene.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- metilene
