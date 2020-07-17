class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dirname.cwl
inputs:
- id: end_output_line
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dirname
