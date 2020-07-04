class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hgLoadOutJoined.cwl
inputs:
- id: tab_file
  doc: "- don't actually load database, just create tab file"
  type: string
  inputBinding:
    prefix: -tabFile
- id: table
  doc: '- use a different suffix other than the default (rmskOutBaseline)'
  type: string
  inputBinding:
    prefix: -table
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadOutJoined
