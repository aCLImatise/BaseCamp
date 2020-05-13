class: CommandLineTool
id: mafFetch_db_table_mafOut.cwl
inputs:
- id: over_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFetch
- db
- table
- mafOut
