class: CommandLineTool
id: igdiscover_multidiscover.cwl
inputs:
- id: in_minimum_frequency
  doc: "Minimum number of datasets in which sequence must\noccur (default is no. of\
    \ files divided by two)"
  type: long
  inputBinding:
    prefix: --minimum-frequency
- id: in_minimum_db_diff
  doc: "Use only sequences that have at least DIST differences\nto the database sequence.\
    \ Default: 1\n"
  type: long
  inputBinding:
    prefix: --minimum-db-diff
- id: in_discover_dot_tab
  doc: "Table created by the \"discover\" command (give at least\ntwo)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- multidiscover
