class: CommandLineTool
id: hgLoadOut.cwl
inputs:
- id: tab_file
  doc: "'t actually load database, just create tab file"
  type: string
  inputBinding:
    prefix: -tabFile
- id: split
  doc: separate tables even if a single file is given
  type: string
  inputBinding:
    prefix: -split
- id: table
  doc: different suffix other than the default (rmsk)
  type: string
  inputBinding:
    prefix: -table
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadOut
