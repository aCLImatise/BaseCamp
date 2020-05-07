class: CommandLineTool
id: medpy_shrink_image.py.cwl
inputs:
- id: input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
- id: dimension
  doc: The dimension along which to discard the slices.
  type: string
  inputBinding:
    position: 2
- id: discard
  doc: How many slices to discard between each two slices which are kept.
  type: string
  inputBinding:
    position: 3
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
- id: f
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_shrink_image.py
