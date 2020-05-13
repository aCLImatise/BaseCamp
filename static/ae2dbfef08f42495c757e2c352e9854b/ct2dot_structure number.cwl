class: CommandLineTool
id: ct2dot_structure number.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: structure_number
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bracket_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ct2dot
- structure number
