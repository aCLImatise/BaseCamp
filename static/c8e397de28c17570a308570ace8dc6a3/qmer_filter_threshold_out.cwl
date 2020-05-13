class: CommandLineTool
id: qmer_filter_threshold_out.cwl
inputs:
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qmer-filter
- threshold
- out
