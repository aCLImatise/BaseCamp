class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makmdm.cwl
inputs:
- id: _brosum_series
  doc: ':     Brosum series'
  type: boolean
  inputBinding:
    prefix: -b
- id: _vt_series
  doc: ':     VT series'
  type: boolean
  inputBinding:
    prefix: -v
- id: opt_dot_dot_dot
  doc: ''
  type: boolean
  inputBinding:
    prefix: -opt...
- id: dest_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makmdm
