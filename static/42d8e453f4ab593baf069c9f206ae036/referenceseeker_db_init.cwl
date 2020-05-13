class: CommandLineTool
id: referenceseeker_db_init.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs: []
cwlVersion: v1.1
baseCommand:
- referenceseeker_db
- init
