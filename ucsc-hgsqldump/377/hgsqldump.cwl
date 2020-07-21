class: CommandLineTool
id: ../../../hgsqldump.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tables
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgsqldump
