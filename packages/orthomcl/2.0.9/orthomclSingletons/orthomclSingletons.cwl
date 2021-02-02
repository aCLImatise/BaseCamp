class: CommandLineTool
id: orthomclSingletons.cwl
inputs:
- id: in_good_proteins
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_groups_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_id_prefix
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
- orthomclSingletons
