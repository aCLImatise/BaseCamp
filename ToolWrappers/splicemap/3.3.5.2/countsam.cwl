class: CommandLineTool
id: countsam.cwl
inputs:
- id: in_in_file_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_flat_dot_txt
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
- countsam
