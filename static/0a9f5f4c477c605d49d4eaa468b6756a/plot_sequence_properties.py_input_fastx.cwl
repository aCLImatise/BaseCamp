class: CommandLineTool
id: plot_sequence_properties.py_input_fastx.cwl
inputs:
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_plot_sequence_properties_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_sequence_properties.py
- input_fastx
