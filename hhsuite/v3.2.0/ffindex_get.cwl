class: CommandLineTool
id: ../../../ffindex_get.cwl
inputs:
- id: data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: entry
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_get
