class: CommandLineTool
id: plot_qualities.py_input_fastx.cwl
inputs:
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_qualities.py
- input_fastx
