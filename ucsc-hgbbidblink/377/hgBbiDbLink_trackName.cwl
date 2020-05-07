class: CommandLineTool
id: hgBbiDbLink_trackName.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgBbiDbLink
- trackName
