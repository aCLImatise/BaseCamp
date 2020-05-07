class: CommandLineTool
id: mafFetch_db_mafOut.cwl
inputs:
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: over_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: maf_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFetch
- db
- mafOut
