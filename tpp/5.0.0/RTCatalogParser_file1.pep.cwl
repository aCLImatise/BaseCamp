class: CommandLineTool
id: RTCatalogParser_file1.pep.xml.cwl
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
- file1.pep.xml
