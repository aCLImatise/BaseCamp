class: CommandLineTool
id: ../../../pizzly_flatten_json.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: flatten_json_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fusion_dot_out_dot_json
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gene_table_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pizzly_flatten_json.py
