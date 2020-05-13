class: CommandLineTool
id: orthomclSingletons_good_proteins.cwl
inputs:
- id: groups_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: id_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclSingletons
- good_proteins
