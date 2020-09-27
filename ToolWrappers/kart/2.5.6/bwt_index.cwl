class: CommandLineTool
id: bwt_index.cwl
inputs:
- id: in_ref_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ex_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_my_ref
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwt_index
