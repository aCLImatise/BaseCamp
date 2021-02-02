class: CommandLineTool
id: gcloud_compute_addresses.cwl
inputs:
- id: in_addresses
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Reserve IP addresses.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Release reserved IP addresses.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about an address.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List addresses.
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
- compute
- addresses
