class: CommandLineTool
id: gcloud_compute_https_health_checks.cwl
inputs:
- id: in_create
  doc: Create an HTTPS health check to monitor load balanced instances.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete HTTPS health checks.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about an HTTPS health check.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine HTTPS health checks.
  type: string
  inputBinding:
    position: 3
- id: in_update
  doc: Update an HTTPS health check.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- https-health-checks
