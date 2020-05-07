class: CommandLineTool
id: orthomclLoadBlast_config_file.cwl
inputs:
- id: similar_seqs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclLoadBlast
- config_file
