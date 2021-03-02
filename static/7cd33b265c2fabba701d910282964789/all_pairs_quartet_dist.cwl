class: CommandLineTool
id: all_pairs_quartet_dist.cwl
inputs:
- id: in_input_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- all_pairs_quartet_dist
