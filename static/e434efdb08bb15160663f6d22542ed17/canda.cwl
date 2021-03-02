class: CommandLineTool
id: canda.cwl
inputs:
- id: in_t
  doc: ''
  type: File?
  inputBinding:
    prefix: -t
- id: in_c_and_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
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
- canda
