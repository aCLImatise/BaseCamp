class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mast_xml_to_txt.cwl
inputs:
- id: mast_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mast_text_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mast_xml_to_txt
