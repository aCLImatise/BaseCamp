class: CommandLineTool
id: medpy_set_pixel_spacing.py.cwl
inputs:
- id: image
  doc: Image volume.
  type: string
  inputBinding:
    position: 0
- id: spacing
  doc: The spacing values.
  type: string
  inputBinding:
    position: 1
- id: v
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_set_pixel_spacing.py
