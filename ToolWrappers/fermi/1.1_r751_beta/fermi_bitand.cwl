class: CommandLineTool
id: fermi_bitand.cwl
inputs:
- id: in_in_one_dot_bit
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_two_dot_bit
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- bitand
