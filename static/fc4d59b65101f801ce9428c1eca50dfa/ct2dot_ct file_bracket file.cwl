class: CommandLineTool
id: ct2dot_ct file_bracket file.cwl
inputs:
- id: structure_number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bracket_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ct2dot
- ct file
- bracket file
