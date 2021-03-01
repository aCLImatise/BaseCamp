class: CommandLineTool
id: dreme_xml_to_txt.cwl
inputs:
- id: in_dre_me_xml_to_html
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dre_me_xml_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dreme_xml_to_txt
