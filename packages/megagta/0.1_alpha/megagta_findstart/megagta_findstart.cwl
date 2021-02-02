class: CommandLineTool
id: megagta_findstart.cwl
inputs:
- id: in_find_start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_seq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_read_dot_lib
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_k_size
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megagta
- findstart
