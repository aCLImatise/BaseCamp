class: CommandLineTool
id: eps2eps.cwl
inputs:
- id: in_switches_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eps2eps
