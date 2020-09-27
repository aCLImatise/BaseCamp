class: CommandLineTool
id: ps2ps2_input.ps.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ps2ps2
- input.ps
