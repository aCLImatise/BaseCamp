class: CommandLineTool
id: nebulizer_list_users.cwl
inputs:
- id: in_name
  doc: "list only users with matching email or user name. Can include\nglob-style\
    \ wild-cards."
  type: string
  inputBinding:
    prefix: --name
- id: in_long
  doc: "use a long listing format that includes ids, disk usage and\nadmin status."
  type: boolean
  inputBinding:
    prefix: --long
- id: in_show_id
  doc: include internal Galaxy user ID.
  type: boolean
  inputBinding:
    prefix: --show_id
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_users
