class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dvipdf.cwl
inputs:
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_dvi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_pdf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dvipdf
