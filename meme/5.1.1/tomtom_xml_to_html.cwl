class: CommandLineTool
id: ../../../tomtom_xml_to_html.cwl
inputs:
- id: tomtom_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tomtom_html_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tomtom_xml_to_html
