class: CommandLineTool
id: qmer_filter_threshold_in .cwl
inputs:
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qmer-filter
- threshold
- 'in '
