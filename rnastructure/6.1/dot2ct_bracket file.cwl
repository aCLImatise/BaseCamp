class: CommandLineTool
id: dot2ct_bracket file.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dot2ct
- bracket file
