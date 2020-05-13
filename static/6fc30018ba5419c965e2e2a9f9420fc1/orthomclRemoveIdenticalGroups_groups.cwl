class: CommandLineTool
id: orthomclRemoveIdenticalGroups_groups.txt.cwl
inputs:
- id: ref_groups_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclRemoveIdenticalGroups
- groups.txt
