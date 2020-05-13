class: CommandLineTool
id: dreme_xml_to_html_DREME HTML file.cwl
inputs:
- id: dre_me_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dre_me_html_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dreme_xml_to_html
- DREME HTML file
