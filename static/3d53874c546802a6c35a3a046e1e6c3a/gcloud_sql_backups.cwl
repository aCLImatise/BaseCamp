class: CommandLineTool
id: gcloud_sql_backups.cwl
inputs:
- id: in_instances
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Creates a backup of a Cloud SQL instance.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete a backup of a Cloud SQL instance.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Retrieves information about a backup.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: Lists all backups associated with a given instance.
  type: string
  inputBinding:
    position: 3
- id: in_restore
  doc: Restores a backup of a Cloud SQL instance.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- sql
- backups
