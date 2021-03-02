class: CommandLineTool
id: pblayout_sg_to_sg.cwl
inputs:
- id: in_in_dots_g
  doc: STR  Input SG.
  type: string
  inputBinding:
    position: 0
- id: in_out_dots_g
  doc: STR  Output SG.
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
- pblayout
- sg-to-sg
