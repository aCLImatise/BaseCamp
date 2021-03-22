class: CommandLineTool
id: remove_user_specified_row_col.py.cwl
inputs:
- id: in_rowfeature_dropped_rowid
  doc: "[ROW ...], --row [ROW ...]\nRow/feature to be dropped - use rowID (can be\
    \ left\nempty)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_columnsample_dropped_beleft
  doc: "[COL ...], --col [COL ...]\nColumn/sample to be dropped - use column header(can\
    \ be\nleft empty)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_out_wide
  doc: "Output file without specified rows/columns.\n"
  type: File?
  inputBinding:
    prefix: --outWide
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_wide
  doc: "Output file without specified rows/columns.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_wide)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- remove_user_specified_row_col.py
