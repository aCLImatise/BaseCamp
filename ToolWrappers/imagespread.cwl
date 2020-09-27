class: CommandLineTool
id: imagespread.cwl
inputs:
- id: in_seq_name_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_msp_list
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- imagespread
