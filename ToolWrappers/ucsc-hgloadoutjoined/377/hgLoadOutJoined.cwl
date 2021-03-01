class: CommandLineTool
id: hgLoadOutJoined.cwl
inputs:
- id: in_tab_file
  doc: "- don't actually load database, just create tab file"
  type: File?
  inputBinding:
    prefix: -tabFile
- id: in_table
  doc: '- use a different suffix other than the default (rmskOutBaseline)'
  type: string?
  inputBinding:
    prefix: -table
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hgLoadOutJoined
