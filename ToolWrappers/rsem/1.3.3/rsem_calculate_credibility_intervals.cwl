class: CommandLineTool
id: rsem_calculate_credibility_intervals.cwl
inputs:
- id: in_reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_imd_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stat_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_confidence
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_ncv
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_ns_pc
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_nmb
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-calculate-credibility-intervals
