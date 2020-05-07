class: CommandLineTool
id: sqlToXml_database_dumpSpec.od.cwl
inputs:
- id: output_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sqlToXml
- database
- dumpSpec.od
