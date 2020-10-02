class: CommandLineTool
id: fermi_splitfa.cwl
inputs:
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_eight
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- splitfa
