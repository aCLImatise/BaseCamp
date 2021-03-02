class: CommandLineTool
id: hgLoadOut.cwl
inputs:
- id: in_tab_file
  doc: "- don't actually load database, just create tab file"
  type: File?
  inputBinding:
    prefix: -tabFile
- id: in_split
  doc: '- load chrN_rmsk separate tables even if a single file is given'
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_table
  doc: '- use a different suffix other than the default (rmsk)'
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
- hgLoadOut
