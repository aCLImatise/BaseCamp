class: CommandLineTool
id: gcloud_compute_operations.cwl
inputs:
- id: in_operations
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe a Google Compute Engine operation.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List Google Compute Engine operations.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- operations
