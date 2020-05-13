class: CommandLineTool
id: conus_fold.cwl
inputs:
- id: h
  doc: '(with -g) shift to hydrogen bonding scoring  '
  type: boolean
  inputBinding:
    prefix: -H
- id: flat
  doc: '(with -g) flat scoring scheme '
  type: boolean
  inputBinding:
    prefix: --flat
outputs: []
cwlVersion: v1.1
baseCommand:
- conus_fold
