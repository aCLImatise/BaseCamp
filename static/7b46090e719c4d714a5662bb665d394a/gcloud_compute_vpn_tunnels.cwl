class: CommandLineTool
id: gcloud_compute_vpn_tunnels.cwl
inputs:
- id: in_tunnels
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a VPN tunnel.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete vpn tunnels.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine vpn tunnel.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine VPN tunnels.
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
- vpn-tunnels
