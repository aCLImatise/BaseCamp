class: CommandLineTool
id: orthomclRemoveIdenticalGroups.cwl
inputs:
- id: in_groups_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_groups_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orthomclRemoveIdenticalGroups
