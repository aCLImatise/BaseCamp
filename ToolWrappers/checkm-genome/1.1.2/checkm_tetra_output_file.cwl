class: CommandLineTool
id: checkm_tetra_output_file.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tetra
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkm
- tetra
- output_file
