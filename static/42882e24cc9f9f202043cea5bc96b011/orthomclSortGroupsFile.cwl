class: CommandLineTool
id: orthomclSortGroupsFile.cwl
inputs:
- id: in_groups_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orthomclSortGroupsFile
