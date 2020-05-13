class: CommandLineTool
id: hgsqldump.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tables
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgsqldump
