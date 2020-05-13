class: CommandLineTool
id: mafFetch_table.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: over_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFetch
- table
