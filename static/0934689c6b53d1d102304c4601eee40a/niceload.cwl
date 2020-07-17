class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/niceload.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -L
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: var_4
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- niceload
