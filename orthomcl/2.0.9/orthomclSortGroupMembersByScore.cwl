class: CommandLineTool
id: ../../../orthomclSortGroupMembersByScore.cwl
inputs:
- id: in_orthologs_dot_txt
  doc: paralogs.txt
  type: string
  inputBinding:
    position: 0
- id: in_co_orthologs_dot_txt
  doc: 'Output:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orthomclSortGroupMembersByScore
