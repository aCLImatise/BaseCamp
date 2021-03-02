class: CommandLineTool
id: fermi_sub.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_in_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_array_dot_bits
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
- fermi
- sub
