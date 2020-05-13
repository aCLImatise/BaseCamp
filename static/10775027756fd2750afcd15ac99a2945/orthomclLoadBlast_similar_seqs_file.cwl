class: CommandLineTool
id: orthomclLoadBlast_similar_seqs_file.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: similar_seqs_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclLoadBlast
- similar_seqs_file
