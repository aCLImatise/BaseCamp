class: CommandLineTool
id: chainToPslBasic.cwl
inputs:
- id: in_chain_top_sl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_chain
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
- chainToPslBasic
