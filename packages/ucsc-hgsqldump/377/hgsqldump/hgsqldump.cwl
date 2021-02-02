class: CommandLineTool
id: hgsqldump.cwl
inputs:
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgsqldump
