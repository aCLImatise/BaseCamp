class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RefreshParser.cwl
inputs:
- id: pep_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- RefreshParser
