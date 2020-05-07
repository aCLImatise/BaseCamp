class: CommandLineTool
id: orthomclSortGroupMembersByScore.cwl
inputs:
- id: groups_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pairs_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: standard
  doc: ':  sorted groups file'
  type: string
  inputBinding:
    prefix: '- standard'
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclSortGroupMembersByScore
