class: CommandLineTool
id: tomtom_xml_to_html.cwl
inputs:
- id: in_tomtom_xml_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tomtom_xml_to_html
