class: CommandLineTool
id: gsutil_defacl.cwl
inputs:
- id: in_remove_roles_associated
  doc: Remove all roles associated with the matching entity.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_normally_gsutil_stops
  doc: "Normally gsutil stops at the first error. The -f option causes\nit to continue\
    \ when it encounters errors. With this option the\ngsutil exit status will be\
    \ 0 even if some ACLs couldn't be\nchanged."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_add_modify_group_role
  doc: Add or modify a group entity's role.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_add_modify_viewerseditorsowners_role
  doc: Add or modify a project viewers/editors/owners role.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_add_modify_user_role
  doc: Add or modify a user entity's role.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_description_dot
  doc: CH EXAMPLES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- defacl
