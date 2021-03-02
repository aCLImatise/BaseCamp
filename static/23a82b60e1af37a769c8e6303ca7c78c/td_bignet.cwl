class: CommandLineTool
id: td_bignet.cwl
inputs:
- id: in_link_definition
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
- td_bignet
