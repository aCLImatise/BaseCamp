class: CommandLineTool
id: ps2ps_input.ps.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ps2ps
- input.ps
