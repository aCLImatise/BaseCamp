class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/orthomclSingletons.cwl
inputs:
- id: good_proteins
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: groups_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: id_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclSingletons
