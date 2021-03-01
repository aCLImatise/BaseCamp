class: CommandLineTool
id: gcloud_sql_databases.cwl
inputs:
- id: in_instances
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Creates a database for a Cloud SQL instance.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Deletes a Cloud SQL database.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Displays configuration and metadata about a Cloud SQL database.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: Lists databases for a Cloud SQL instance.
  type: string
  inputBinding:
    position: 3
- id: in_patch
  doc: Patches the settings of a Cloud SQL database.
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
- databases
