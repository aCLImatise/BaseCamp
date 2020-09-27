class: CommandLineTool
id: gcloud_compute_routers.cwl
inputs:
- id: in_routers
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_add_bgp_peer
  doc: Add a BGP peer to a Google Compute Engine router.
  type: string
  inputBinding:
    position: 0
- id: in_add_interface
  doc: Add an interface to a Google Compute Engine router.
  type: string
  inputBinding:
    position: 1
- id: in_create
  doc: Create a Google Compute Engine router.
  type: string
  inputBinding:
    position: 2
- id: in_delete
  doc: Delete Google Compute Engine routers.
  type: string
  inputBinding:
    position: 3
- id: in_describe
  doc: Describe a Google Compute Engine router.
  type: string
  inputBinding:
    position: 4
- id: in_get_status
  doc: Get status of a Google Compute Engine router.
  type: string
  inputBinding:
    position: 5
- id: in_list
  doc: List Google Compute Engine routers.
  type: string
  inputBinding:
    position: 6
- id: in_remove_bgp_peer
  doc: Remove a BGP peer from a Google Compute Engine router.
  type: string
  inputBinding:
    position: 7
- id: in_remove_interface
  doc: Remove an interface from a Google Compute Engine router.
  type: string
  inputBinding:
    position: 8
- id: in_update_bgp_peer
  doc: Update a BGP peer on a Google Compute Engine router.
  type: string
  inputBinding:
    position: 9
- id: in_update_interface
  doc: Update an interface on a Google Compute Engine router.
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- routers
