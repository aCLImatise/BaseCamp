class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/byobu.cwl
inputs:
- id: two_clu_vv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -2CluvV
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -L
- id: t_mux
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- byobu
