class: CommandLineTool
id: map_learn_static.cwl
inputs:
- id: map_learn
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: map_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- map_learn_static
