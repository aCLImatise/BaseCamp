class: CommandLineTool
id: ct2dot_ct file_structure number.cwl
inputs:
- id: bracket_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ct2dot
- ct file
- structure number
