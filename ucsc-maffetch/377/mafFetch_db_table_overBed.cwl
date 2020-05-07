class: CommandLineTool
id: mafFetch_db_table_overBed.cwl
inputs:
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFetch
- db
- table
- overBed
