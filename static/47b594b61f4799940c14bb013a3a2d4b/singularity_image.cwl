class: CommandLineTool
id: ../../../singularity_image.cwl
inputs:
- id: image_dot_create
  doc: Create an image
  type: string
  inputBinding:
    position: 0
- id: image_dot_import
  doc: Import data into an image
  type: string
  inputBinding:
    position: 1
- id: image_dot_expand
  doc: Expand an image
  type: string
  inputBinding:
    position: 2
- id: image_dot_export
  doc: Export the contents of an image
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- image
