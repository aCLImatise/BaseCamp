class: CommandLineTool
id: pizzly_flatten_json.py.cwl
inputs:
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flatten_json_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fusion_dot_out_dot_json
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_gene_table_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pizzly_flatten_json.py
