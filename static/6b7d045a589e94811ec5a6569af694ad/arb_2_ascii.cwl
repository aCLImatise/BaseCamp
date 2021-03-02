class: CommandLineTool
id: arb_2_ascii.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_source_dot_arb
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
- arb_2_ascii
