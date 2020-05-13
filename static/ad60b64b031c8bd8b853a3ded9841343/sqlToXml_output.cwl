class: CommandLineTool
id: sqlToXml_output.xml.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dump_speco_d
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_xml
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sqlToXml
- output.xml
