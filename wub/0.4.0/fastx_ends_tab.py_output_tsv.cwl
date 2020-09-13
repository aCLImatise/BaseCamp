class: CommandLineTool
id: ../../../fastx_ends_tab.py_output_tsv.cwl
inputs:
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_fast_x_ends_tab_do_tpy
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
- fastx_ends_tab.py
- output_tsv
