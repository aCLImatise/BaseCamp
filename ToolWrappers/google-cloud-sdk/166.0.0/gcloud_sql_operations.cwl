class: CommandLineTool
id: gcloud_sql_operations.cwl
inputs:
- id: in_instance_dot
  doc: GCLOUD WIDE FLAGS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Retrieves information about a Cloud SQL instance operation.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: Lists all instance operations for the given Cloud SQL instance.
  type: string
  inputBinding:
    position: 1
- id: in_wait
  doc: Waits for one or more operations to complete.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- sql
- operations
