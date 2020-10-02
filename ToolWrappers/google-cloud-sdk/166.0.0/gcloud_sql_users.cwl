class: CommandLineTool
id: gcloud_sql_users.cwl
inputs:
- id: in_create
  doc: Creates a user in a given instance.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Deletes a Cloud SQL user in a given instance.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: Lists Cloud SQL users in a given instance.
  type: string
  inputBinding:
    position: 2
- id: in_set_password
  doc: Changes a user's password in a given instance.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- sql
- users
