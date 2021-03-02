class: CommandLineTool
id: annotate.cwl
inputs:
- id: in_gap_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- annotate
