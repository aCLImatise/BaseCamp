class: CommandLineTool
id: gb2fas_output.fas.cwl
inputs:
- id: input_gb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fas
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gb2fas
- output.fas
