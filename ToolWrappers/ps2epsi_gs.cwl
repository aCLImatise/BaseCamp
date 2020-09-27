class: CommandLineTool
id: ps2epsi_gs.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ps2epsi
- gs
