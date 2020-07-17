class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffcompare.cwl
inputs:
- id: c_slash_a_slash_x
  doc: ', do NOT discard any redundant transfrag matching a reference'
  type: string
  inputBinding:
    prefix: -C/-A/-X
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -T
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gffcompare
