class: CommandLineTool
id: gb2fas_input.gb.cwl
inputs:
- id: output_fas
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gb2fas
- input.gb
