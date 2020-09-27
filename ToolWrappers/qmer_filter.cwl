class: CommandLineTool
id: qmer_filter.cwl
inputs:
- id: in_threshold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qmer-filter
