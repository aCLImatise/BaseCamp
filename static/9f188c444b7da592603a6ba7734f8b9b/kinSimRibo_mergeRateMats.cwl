class: CommandLineTool
id: kinSimRibo_mergeRateMats.cwl
inputs:
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mon_rates
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dim_rates
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mon2dim_rates
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: dim2mon_rates
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: d
  doc: ':     Allow disconnected matrix / do not check whether A and B are connected.'
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: ':     Be verbose'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kinSimRibo_mergeRateMats
