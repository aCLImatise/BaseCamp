class: CommandLineTool
id: run_intersections.cwl
inputs:
- id: in_chri
  doc: 850     879     +       L1P5    LINE    L1
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
- run_intersections
