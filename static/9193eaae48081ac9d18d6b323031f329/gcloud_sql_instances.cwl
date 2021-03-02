class: CommandLineTool
id: gcloud_sql_instances.cwl
inputs:
- id: in_clone
  doc: Clones a Cloud SQL instance.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Creates a new Cloud SQL instance.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Deletes a Cloud SQL instance.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Displays configuration and metadata about a Cloud SQL instance.
  type: string
  inputBinding:
    position: 3
- id: in_export
  doc: Exports data from a Cloud SQL instance.
  type: string
  inputBinding:
    position: 4
- id: in_failover
  doc: Causes a high-availability Cloud SQL instance to failover.
  type: string
  inputBinding:
    position: 5
- id: in_import
  doc: Imports data into a Cloud SQL instance from Google Cloud Storage.
  type: string
  inputBinding:
    position: 6
- id: in_list
  doc: Lists Cloud SQL instances in a given project.
  type: string
  inputBinding:
    position: 7
- id: in_patch
  doc: Updates the settings of a Cloud SQL instance.
  type: string
  inputBinding:
    position: 8
- id: in_promote_replica
  doc: Promotes Cloud SQL read replica to a stand-alone instance.
  type: string
  inputBinding:
    position: 9
- id: in_reset_ssl_config
  doc: Deletes all client certificates and generates a new server certificate.
  type: string
  inputBinding:
    position: 10
- id: in_restart
  doc: Restarts a Cloud SQL instance.
  type: string
  inputBinding:
    position: 11
- id: in_restore_backup
  doc: Restores a backup of a Cloud SQL instance.
  type: string
  inputBinding:
    position: 12
- id: in_set_root_password
  doc: (DEPRECATED) Sets the password of the MySQL root user.
  type: string
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- sql
- instances
