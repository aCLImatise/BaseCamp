class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kinSimRibo_mergeRateMats.cwl
inputs:
- id: allow_disconnected_matrix
  doc: ':     Allow disconnected matrix / do not check whether A and B are connected.'
  type: boolean
  inputBinding:
    prefix: -d
- id: _be_verbose
  doc: ':     Be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mon_dot_rates
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dim_dot_rates
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- kinSimRibo_mergeRateMats
