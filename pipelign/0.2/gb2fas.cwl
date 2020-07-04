class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gb2fas.cwl
inputs:
- id: input_dot_gb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_fas
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gb2fas
