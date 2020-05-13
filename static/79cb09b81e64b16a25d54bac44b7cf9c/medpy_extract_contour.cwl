class: CommandLineTool
id: medpy_extract_contour.py.cwl
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
- id: width
  doc: Width of the contour.
  type: string
  inputBinding:
    prefix: --width
- id: dimension
  doc: Extract contours only along this dimension.
  type: string
  inputBinding:
    prefix: --dimension
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
- medpy_extract_contour.py
