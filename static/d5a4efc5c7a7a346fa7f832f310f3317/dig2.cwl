class: CommandLineTool
id: dig2.cwl
inputs:
- id: dig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_sequence_database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: settings
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dig2
