class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme_xml_to_html.cwl
inputs:
- id: meme_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: meme_html_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- meme_xml_to_html
