class: CommandLineTool
id: map_learn_static.cwl
inputs:
- id: in_map_learn
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map_xml_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- map_learn_static
