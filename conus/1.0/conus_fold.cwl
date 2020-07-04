class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/conus_fold.cwl
inputs:
- id: g_shift_hydrogen
  doc: '(with -g) shift to hydrogen bonding scoring  '
  type: boolean
  inputBinding:
    prefix: -H
- id: flat
  doc: '(with -g) flat scoring scheme '
  type: boolean
  inputBinding:
    prefix: --flat
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- conus_fold
