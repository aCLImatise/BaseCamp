class: CommandLineTool
id: famdef.cwl
inputs:
- id: in_seq_list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- famdef
