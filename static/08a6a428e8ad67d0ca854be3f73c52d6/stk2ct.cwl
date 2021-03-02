class: CommandLineTool
id: stk2ct.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_give_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file_in
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
- stk2ct
