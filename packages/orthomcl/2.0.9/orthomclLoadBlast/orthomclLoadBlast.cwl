class: CommandLineTool
id: orthomclLoadBlast.cwl
inputs:
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_similar_seqs_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orthomclLoadBlast
