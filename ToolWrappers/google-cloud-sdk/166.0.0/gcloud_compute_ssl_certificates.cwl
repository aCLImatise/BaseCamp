class: CommandLineTool
id: gcloud_compute_ssl_certificates.cwl
inputs:
- id: in_create
  doc: Create a Google Compute Engine SSL certificate.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete Google Compute Engine SSL certificates.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine SSL certificate.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine SSL certificates.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- ssl-certificates
