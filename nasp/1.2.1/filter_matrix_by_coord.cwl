class: CommandLineTool
id: filter_matrix_by_coord.py.cwl
inputs:
- id: in_matrix
  doc: /path/to/file [REQUIRED]
  type: string
  inputBinding:
    prefix: --in_matrix
- id: out_prefix
  doc: prefix for output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --out_prefix
- id: in_coords
  doc: /path/to/file [REQUIRED]
  type: string
  inputBinding:
    prefix: --in_coords
- id: action
  doc: 'action to perform: keep SNPs in range or remove?, defaults to keep'
  type: string
  inputBinding:
    prefix: --action
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_matrix_by_coord.py
