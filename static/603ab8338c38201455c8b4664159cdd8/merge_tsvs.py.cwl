class: CommandLineTool
id: merge_tsvs.py.cwl
inputs:
- id: in_join_type_outer
  doc: Join type (outer).
  type: string
  inputBinding:
    prefix: -j
- id: in_join_field_read
  doc: Join on this field (Read).
  type: string
  inputBinding:
    prefix: -f
- id: in_output_tsv_mergetsvstsv
  doc: Output tsv (merge_tsvs.tsv).
  type: string
  inputBinding:
    prefix: -o
- id: in_fill_na_values
  doc: Fill NA values with zero.
  type: boolean
  inputBinding:
    prefix: -z
- id: in_input_t_svs
  doc: Input tab separated files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_tsvs.py
