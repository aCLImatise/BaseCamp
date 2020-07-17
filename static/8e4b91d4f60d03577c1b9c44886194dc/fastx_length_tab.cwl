class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastx_length_tab.py_output_tsv.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: fast_x_length_tab_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_tsv
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_length_tab.py
- output_tsv
