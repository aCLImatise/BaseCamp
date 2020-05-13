class: CommandLineTool
id: RTCatalogParser_outfile.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1pepxml
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- RTCatalogParser
- outfile
