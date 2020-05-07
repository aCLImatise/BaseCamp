class: CommandLineTool
id: sqlToXml_database_output.xml.cwl
inputs:
- id: dump_speco_d
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sqlToXml
- database
- output.xml
