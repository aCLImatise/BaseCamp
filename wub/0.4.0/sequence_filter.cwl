class: CommandLineTool
id: ../../../sequence_filter.py_output_fastx.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
- id: sequence_filter_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence_filter.py
- output_fastx
