class: CommandLineTool
id: ../../../merge_tsvs.py.cwl
inputs:
- id: join_type_outer
  doc: Join type (outer).
  type: string
  inputBinding:
    prefix: -j
- id: join_field_read
  doc: Join on this field (Read).
  type: string
  inputBinding:
    prefix: -f
- id: output_tsv_mergetsvstsv
  doc: Output tsv (merge_tsvs.tsv).
  type: string
  inputBinding:
    prefix: -o
- id: fill_na_values
  doc: Fill NA values with zero.
  type: boolean
  inputBinding:
    prefix: -z
- id: input_t_svs
  doc: Input tab separated files.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_tsvs.py
