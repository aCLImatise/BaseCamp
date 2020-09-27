class: CommandLineTool
id: fastx_length_tab.py_output_tsv.cwl
inputs:
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_fast_x_length_tab_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_tsv
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_length_tab.py
- output_tsv
