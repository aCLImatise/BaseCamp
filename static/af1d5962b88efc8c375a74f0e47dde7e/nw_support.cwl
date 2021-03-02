class: CommandLineTool
id: nw_support.cwl
inputs:
- id: in_hlp
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hlp
- id: in_target_tree_filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_replicates_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nw_support
