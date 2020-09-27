class: CommandLineTool
id: genPoHoLandscape.cwl
inputs:
- id: in_p_q_h
  doc: P:2 Q2 H-3
  type: boolean
  inputBinding:
    prefix: '-99999999999999999'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genPoHoLandscape
