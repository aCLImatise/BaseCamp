class: CommandLineTool
id: gcloud_compute_images.cwl
inputs:
- id: in_images
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_add_labels
  doc: Add labels to Google Compute Engine images.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create Google Compute Engine images.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete Google Compute Engine images.
  type: string
  inputBinding:
    position: 2
- id: in_deprecate
  doc: Manage deprecation status of Google Compute Engine images.
  type: string
  inputBinding:
    position: 3
- id: in_describe
  doc: Describe a Google Compute Engine image.
  type: string
  inputBinding:
    position: 4
- id: in_describe_from_family
  doc: Describe the latest image from an image family.
  type: string
  inputBinding:
    position: 5
- id: in_list
  doc: List Google Compute Engine images.
  type: string
  inputBinding:
    position: 6
- id: in_remove_labels
  doc: Remove labels from Google Compute Engine images.
  type: string
  inputBinding:
    position: 7
- id: in_update
  doc: Update a Google Compute Engine image.
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- images
