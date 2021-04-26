class: CommandLineTool
id: arrow_groups_update_membership.cwl
inputs:
- id: in_group_id
  doc: Group ID Number
  type: long?
  inputBinding:
    prefix: --group_id
- id: in_users
  doc: List of emails
  type: string?
  inputBinding:
    prefix: --users
- id: in_memberships
  doc: "Bulk memberships to update of the form: [ {groupId:\n<groupId>,users: [\"\
    user1\", \"user2\", \"user3\"]},\n{groupId:<another-groupId>, users: [\"user2\"\
    , \"user8\"]}\n(users and groupId will be ignored)"
  type: long?
  inputBinding:
    prefix: --memberships
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- update_membership
