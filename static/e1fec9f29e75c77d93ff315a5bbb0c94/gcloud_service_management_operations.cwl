class: CommandLineTool
id: gcloud_service_management_operations.cwl
inputs:
- id: in_services
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describes an operation resource for a given operation name.
  type: string
  inputBinding:
    position: 0
- id: in_wait
  doc: Waits for an operation to complete.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- service-management
- operations
