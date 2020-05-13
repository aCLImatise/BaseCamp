class: CommandLineTool
id: fastx_length_tab.py_output_tsv.cwl
inputs:
- id: input_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_tsv
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_length_tab.py
- output_tsv
