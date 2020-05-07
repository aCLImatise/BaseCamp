class: CommandLineTool
id: orthomclRemoveIdenticalGroups_ref_groups.txt.cwl
inputs:
- id: groups_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_groups_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclRemoveIdenticalGroups
- ref_groups.txt
