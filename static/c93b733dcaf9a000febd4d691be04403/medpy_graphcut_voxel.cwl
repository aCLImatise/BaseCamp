class: CommandLineTool
id: medpy_graphcut_voxel.py.cwl
inputs:
- id: sigma
  doc: The sigma required for the boundary terms.
  type: string
  inputBinding:
    position: 0
- id: b_additional
  doc: The additional image required by the boundary term. See there for details.
  type: string
  inputBinding:
    position: 1
- id: markers
  doc: Image containing the foreground (=1) and background (=2) markers.
  type: string
  inputBinding:
    position: 2
- id: output
  doc: The output image containing the segmentation.
  type: string
  inputBinding:
    position: 3
- id: boundary
  doc: The boundary term to use. Note that the ones prefixed with diff_ require the
    original image, while the ones prefixed with max_ require the gradient image.
  type: string
  inputBinding:
    prefix: --boundary
- id: s
  doc: Set this flag to take the pixel spacing of the image into account. The spacing
    data will be extracted from the baddtional image.
  type: boolean
  inputBinding:
    prefix: -s
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
- medpy_graphcut_voxel.py
