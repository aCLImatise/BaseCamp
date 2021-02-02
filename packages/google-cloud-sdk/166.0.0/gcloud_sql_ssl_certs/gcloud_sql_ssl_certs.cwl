class: CommandLineTool
id: gcloud_sql_ssl_certs.cwl
inputs:
- id: in_certificates_dot
  doc: GCLOUD WIDE FLAGS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Creates an SSL certificate for a Cloud SQL instance.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Deletes an SSL certificate for a Cloud SQL instance.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Retrieves information about an SSL cert for a Cloud SQL instance.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: Lists all SSL certs for a Cloud SQL instance.
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
- ssl-certs
