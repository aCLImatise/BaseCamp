class: CommandLineTool
id: dig2.cwl
inputs:
- id: in_dig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_sequence_database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_settings
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dig2
