class: CommandLineTool
id: colorinterpolate.cwl
inputs:
- id: in_start
  doc: ',y1,z1 -end x2,y2,z2 -steps STEPS'
  type: long?
  inputBinding:
    prefix: -start
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- colorinterpolate
