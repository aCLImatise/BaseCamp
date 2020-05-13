class: CommandLineTool
id: dot2ct_ct file.cwl
inputs:
- id: bracket_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dot2ct
- ct file
