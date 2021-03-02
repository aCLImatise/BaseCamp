class: CommandLineTool
id: gcloud_compute_target_http_proxies.cwl
inputs:
- id: in_proxies
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a target HTTP proxy.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete target HTTP proxies.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about a target HTTP proxy.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine target HTTP proxies.
  type: string
  inputBinding:
    position: 3
- id: in_update
  doc: Update a target HTTP proxy.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- target-http-proxies
