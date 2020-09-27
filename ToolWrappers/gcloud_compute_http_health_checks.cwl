class: CommandLineTool
id: gcloud_compute_http_health_checks.cwl
inputs:
- id: in_create
  doc: Create an HTTP health check to monitor load balanced instances.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete HTTP health checks.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about an HTTP health check.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine health checks.
  type: string
  inputBinding:
    position: 3
- id: in_update
  doc: Update an HTTP health check.
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
- http-health-checks
