class: CommandLineTool
id: nw_match.cwl
inputs:
- id: in_hv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hv
- id: in_target_trees_filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_pattern
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
- nw_match
