class: CommandLineTool
id: orthomclMclToGroups.cwl
inputs:
- id: prefix
  doc: a prefix to use when generating group ids.  For example OG2_
  type: string
  inputBinding:
    position: 0
- id: starting_id_num
  doc: a number to start the id generating with.  For example 1000
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclMclToGroups
