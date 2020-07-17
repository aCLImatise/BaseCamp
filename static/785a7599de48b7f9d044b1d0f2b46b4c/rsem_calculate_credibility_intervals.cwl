class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_calculate_credibility_intervals.cwl
inputs:
- id: reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: imd_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stat_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: confidence
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ncv
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: ns_pc
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: nmb
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-calculate-credibility-intervals
