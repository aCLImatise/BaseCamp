class: CommandLineTool
id: gcloud_service_management_undelete.cwl
inputs:
- id: in_async
  doc: "Display information about the operation in progress, without waiting\nfor\
    \ the operation to complete."
  type: boolean
  inputBinding:
    prefix: --async
- id: in_name
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_service
  doc: The name of the service to undelete.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- service-management
- undelete
