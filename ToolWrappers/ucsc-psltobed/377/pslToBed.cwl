class: CommandLineTool
id: pslToBed.cwl
inputs:
- id: in_psl
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
- pslToBed
