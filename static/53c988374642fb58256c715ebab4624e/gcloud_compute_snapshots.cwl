class: CommandLineTool
id: gcloud_compute_snapshots.cwl
inputs:
- id: in_snapshots
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_add_labels
  doc: Add labels to Google Compute Engine snapshots.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete Google Compute Engine snapshots.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine snapshot.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine snapshots.
  type: string
  inputBinding:
    position: 3
- id: in_remove_labels
  doc: Remove labels from Google Compute Engine snapshots.
  type: string
  inputBinding:
    position: 4
- id: in_update
  doc: Update a Google Compute Engine snapshot.
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- snapshots
