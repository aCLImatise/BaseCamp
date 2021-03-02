class: CommandLineTool
id: gcloud_compute_networks.cwl
inputs:
- id: in_networks
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_peering_s
  doc: List, create, and delete Google Compute Engine network peerings.
  type: string
  inputBinding:
    position: 0
- id: in_subnets
  doc: List, describe, and delete Google Compute Engine subnetworks.
  type: string
  inputBinding:
    position: 1
- id: in_create
  doc: Create a Google Compute Engine network.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete Google Compute Engine networks.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine network.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine networks.
  type: string
  inputBinding:
    position: 3
- id: in_switch_mode
  doc: Switch the mode of a Google Compute Engine network.
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
- networks
