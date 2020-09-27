class: CommandLineTool
id: gcloud_spanner_operations.cwl
inputs:
- id: in_cancel
  doc: Cancel a Cloud Spanner operation.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe a Cloud Spanner operation.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List the Cloud Spanner operations on the given instance or database.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- spanner
- operations
