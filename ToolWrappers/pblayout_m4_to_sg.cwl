class: CommandLineTool
id: pblayout_m4_to_sg.cwl
inputs:
- id: in_in_do_tm_four
  doc: STR  Input M4 or M4F.
  type: long
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
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-to-sg
