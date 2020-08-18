class: CommandLineTool
id: ../../../eps2eps.cwl
inputs:
- id: switches_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_eps
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- eps2eps
