class: CommandLineTool
id: mast_xml_to_html.cwl
inputs:
- id: in_mast_xml_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mast_xml_to_html
