class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hgLoadOut.cwl
inputs:
- id: tab_file
  doc: "- don't actually load database, just create tab file"
  type: string
  inputBinding:
    prefix: -tabFile
- id: split
  doc: '- load chrN_rmsk separate tables even if a single file is given'
  type: boolean
  inputBinding:
    prefix: -split
- id: table
  doc: '- use a different suffix other than the default (rmsk)'
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
- hgLoadOut
