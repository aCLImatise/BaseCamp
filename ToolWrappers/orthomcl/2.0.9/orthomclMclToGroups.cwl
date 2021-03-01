class: CommandLineTool
id: orthomclMclToGroups.cwl
inputs:
- id: in_prefix
  doc: a prefix to use when generating group ids.  For example OG2_
  type: string
  inputBinding:
    position: 0
- id: in_starting_id_num
  doc: a number to start the id generating with.  For example 1000
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
- orthomclMclToGroups
