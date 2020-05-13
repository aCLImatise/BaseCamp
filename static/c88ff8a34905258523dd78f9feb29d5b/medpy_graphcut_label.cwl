class: CommandLineTool
id: medpy_graphcut_label.py.cwl
inputs:
- id: b_additional
  doc: The additional image required by the boundary term. See there for details.
  type: string
  inputBinding:
    position: 0
- id: region
  doc: The region image of the image to segment.
  type: string
  inputBinding:
    position: 1
- id: markers
  doc: Binary image containing the foreground (=1) and background (=2) markers.
  type: string
  inputBinding:
    position: 2
- id: output
  doc: The output image containing the segmentation.
  type: string
  inputBinding:
    position: 3
- id: boundary
  doc: The boundary term to use. Note that difference of means (means) requires the
    original image, while stawiaski requires the gradient image of the original image
    to be passed to badditional.
  type: string
  inputBinding:
    prefix: --boundary
- id: f
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
- medpy_graphcut_label.py
