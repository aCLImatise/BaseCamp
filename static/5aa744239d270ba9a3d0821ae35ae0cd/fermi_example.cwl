class: CommandLineTool
id: fermi_example.cwl
inputs:
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: in_ceu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ceU
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- example
