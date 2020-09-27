class: CommandLineTool
id: gcloud_spanner_databases.cwl
inputs:
- id: in_ddl
  doc: Manage the DDL for Cloud Spanner databases.
  type: string
  inputBinding:
    position: 0
- id: in_add_i_am_policy_binding
  doc: Add an IAM policy binding to a Cloud Spanner database.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a Cloud Spanner database.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete a Cloud Spanner database.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Describe a Cloud Spanner database.
  type: string
  inputBinding:
    position: 3
- id: in_execute_sql
  doc: Executes a read-only SQL query against a Cloud Spanner database.
  type: string
  inputBinding:
    position: 4
- id: in_get_i_am_policy
  doc: Get the IAM policy for a Cloud Spanner database.
  type: string
  inputBinding:
    position: 5
- id: in_list
  doc: List the Cloud Spanner databases contained within the given instance.
  type: string
  inputBinding:
    position: 6
- id: in_remove_i_am_policy_binding
  doc: Remove an IAM policy binding from a Cloud Spanner database.
  type: string
  inputBinding:
    position: 7
- id: in_set_i_am_policy
  doc: Set the IAM policy for a Cloud Spanner database.
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- spanner
- databases
