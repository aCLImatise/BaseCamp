class: CommandLineTool
id: orthomclSortGroupMembersByScore.cwl
inputs:
- id: in_co_orthologs_dot_txt
  doc: 'Output:'
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
- orthomclSortGroupMembersByScore
