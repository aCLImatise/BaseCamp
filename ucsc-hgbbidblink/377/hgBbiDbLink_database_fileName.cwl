class: CommandLineTool
id: hgBbiDbLink_database_fileName.cwl
inputs:
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgBbiDbLink
- database
- fileName
