class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ecofind.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: -P
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: rank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ecofind
