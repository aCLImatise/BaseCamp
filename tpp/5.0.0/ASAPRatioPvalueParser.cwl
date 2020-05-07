class: CommandLineTool
id: ASAPRatioPvalueParser.cwl
inputs:
- id: xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: png_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ASAPRatioPvalueParser
