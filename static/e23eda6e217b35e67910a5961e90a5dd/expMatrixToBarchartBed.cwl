class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/expMatrixToBarchartBed.cwl
inputs:
- id: auto_sql
  doc: Optional autoSql description of extra fields in the input bed.
  type: string
  inputBinding:
    prefix: --autoSql
- id: group_order_file
  doc: Optional file to define the group order, list the groups in a single column
    in the order desired. The default ordering is alphabetical.
  type: string
  inputBinding:
    prefix: --groupOrderFile
- id: use_mean
  doc: Calculate the group values using mean rather than median.
  type: boolean
  inputBinding:
    prefix: --useMean
- id: verbose
  doc: Show runtime messages.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- expMatrixToBarchartBed
