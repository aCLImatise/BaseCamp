class: CommandLineTool
id: ../../../maf_filter.py.cwl
inputs:
- id: in_component_count
  doc: ''
  type: string
  inputBinding:
    prefix: --component_count
- id: in_min_cols
  doc: ''
  type: long
  inputBinding:
    prefix: --min_cols
- id: in_expr
  doc: ''
  type: string
  inputBinding:
    prefix: --expr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_filter.py
