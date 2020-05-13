class: CommandLineTool
id: RTCatalogParser_OPTIONS.cwl
inputs:
- id: file_1pepxml
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- RTCatalogParser
- OPTIONS
