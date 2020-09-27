class: CommandLineTool
id: gcloud_container_images.cwl
inputs:
- id: in_images
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_add_tag
  doc: Adds tags to existing image.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete existing images.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List existing images.
  type: string
  inputBinding:
    position: 2
- id: in_list_tags
  doc: List tags and digests for the specified image.
  type: string
  inputBinding:
    position: 3
- id: in_un_tag
  doc: Remove existing image tags.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- images
