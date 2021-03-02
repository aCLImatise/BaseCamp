class: CommandLineTool
id: gcloud_compute_disks.cwl
inputs:
- id: in_add_labels
  doc: Add labels to Google Compute Engine persistent disks.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create Google Compute Engine persistent disks.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete Google Compute Engine persistent disks.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Describe a Google Compute Engine disk.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List Google Compute Engine disks.
  type: string
  inputBinding:
    position: 4
- id: in_move
  doc: Move a disk between zones.
  type: string
  inputBinding:
    position: 5
- id: in_remove_labels
  doc: Remove labels from Google Compute Engine persistent disks.
  type: string
  inputBinding:
    position: 6
- id: in_resize
  doc: Resize a disk or disks.
  type: string
  inputBinding:
    position: 7
- id: in_snapshot
  doc: Create snapshots of Google Compute Engine persistent disks.
  type: string
  inputBinding:
    position: 8
- id: in_update
  doc: Update a Google Compute Engine persistent disk.
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- disks
