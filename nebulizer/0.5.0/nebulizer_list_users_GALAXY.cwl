class: CommandLineTool
id: nebulizer_list_users_GALAXY.cwl
inputs:
- id: name
  doc: list only users with matching email or user name. Can include glob-style wild-cards.
  type: string
  inputBinding:
    prefix: --name
- id: long
  doc: use a long listing format that includes ids, disk usage and admin status.
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_users
- GALAXY
