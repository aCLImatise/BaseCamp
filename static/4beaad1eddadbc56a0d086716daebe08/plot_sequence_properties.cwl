class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plot_sequence_properties.py_input_fastx.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: plot_sequence_properties_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_sequence_properties.py
- input_fastx
