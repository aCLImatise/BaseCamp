class: CommandLineTool
id: ../../../lastal.cwl
inputs:
- id: last_db_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lastal
