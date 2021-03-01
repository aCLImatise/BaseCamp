class: CommandLineTool
id: sra_to_solid.cwl
inputs:
- id: in_input_dot_fast_q
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
- sra_to_solid
