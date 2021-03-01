class: CommandLineTool
id: transcov_pick_subset.cwl
inputs:
- id: in_input_sample
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transcov
- pick-subset
