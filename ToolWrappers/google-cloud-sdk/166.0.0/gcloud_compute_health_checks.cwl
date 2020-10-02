class: CommandLineTool
id: gcloud_compute_health_checks.cwl
inputs:
- id: in_create
  doc: Create health checks for load balanced instances.
  type: string
  inputBinding:
    position: 0
- id: in_update
  doc: Update health checks for load balanced instances.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete health checks.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Display detailed information about a health check.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List Google Compute Engine health checks.
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
- compute
- health-checks
