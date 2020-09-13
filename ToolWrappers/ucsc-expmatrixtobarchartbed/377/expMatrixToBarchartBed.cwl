class: CommandLineTool
id: ../../../expMatrixToBarchartBed.cwl
inputs:
- id: in_auto_sql
  doc: "Optional autoSql description of extra fields in the\ninput bed."
  type: string
  inputBinding:
    prefix: --autoSql
- id: in_group_order_file
  doc: "Optional file to define the group order, list the\ngroups in a single column\
    \ in the order desired. The\ndefault ordering is alphabetical."
  type: File
  inputBinding:
    prefix: --groupOrderFile
- id: in_use_mean
  doc: Calculate the group values using mean rather than
  type: boolean
  inputBinding:
    prefix: --useMean
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- expMatrixToBarchartBed
