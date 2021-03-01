class: CommandLineTool
id: gcloud_compute_target_vpn_gateways.cwl
inputs:
- id: in_create
  doc: Create a target VPN Gateway.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete target vpn gateways.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine target vpn gateway.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine target VPN gateways.
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
- target-vpn-gateways
