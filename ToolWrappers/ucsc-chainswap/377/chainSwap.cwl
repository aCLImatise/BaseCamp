class: CommandLineTool
id: chainSwap.cwl
inputs:
- id: in_in_dot_chain
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
- chainSwap
