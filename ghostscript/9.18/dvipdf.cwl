class: CommandLineTool
id: dvipdf.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dvi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_pdf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dvipdf
