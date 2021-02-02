class: CommandLineTool
id: sequence_filter.py_output_fastx.cwl
inputs:
- id: in_q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_sequence_filter_do_tpy
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
- sequence_filter.py
- output_fastx
