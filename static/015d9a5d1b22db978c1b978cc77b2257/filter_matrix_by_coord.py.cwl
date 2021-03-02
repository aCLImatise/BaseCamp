class: CommandLineTool
id: filter_matrix_by_coord.py.cwl
inputs:
- id: in_in_matrix
  doc: /path/to/file [REQUIRED]
  type: File?
  inputBinding:
    prefix: --in_matrix
- id: in_out_prefix
  doc: prefix for output files [REQUIRED]
  type: string?
  inputBinding:
    prefix: --out_prefix
- id: in_in_coords
  doc: /path/to/file [REQUIRED]
  type: File?
  inputBinding:
    prefix: --in_coords
- id: in_action
  doc: "action to perform: keep SNPs in range or remove?,\ndefaults to keep\n"
  type: string?
  inputBinding:
    prefix: --action
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_matrix_by_coord.py
