class: CommandLineTool
id: pslDropOverlap.cwl
inputs:
- id: in_in_dot_psl
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
- pslDropOverlap
