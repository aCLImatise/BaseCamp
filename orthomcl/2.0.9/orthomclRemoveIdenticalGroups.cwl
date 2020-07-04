class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/orthomclRemoveIdenticalGroups.cwl
inputs:
- id: groups_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_groups_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclRemoveIdenticalGroups
