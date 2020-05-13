class: CommandLineTool
id: hgLoadOutJoined.cwl
inputs:
- id: tab_file
  doc: "'t actually load database, just create tab file"
  type: string
  inputBinding:
    prefix: -tabFile
- id: table
  doc: different suffix other than the default (rmskOutBaseline)
  type: string
  inputBinding:
    prefix: -table
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadOutJoined
