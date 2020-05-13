class: CommandLineTool
id: qmer_filter_out.cwl
inputs:
- id: threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- qmer-filter
- out
