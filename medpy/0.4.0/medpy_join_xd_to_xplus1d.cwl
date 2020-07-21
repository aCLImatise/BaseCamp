class: CommandLineTool
id: ../../../medpy_join_xd_to_xplus1d.py.cwl
inputs:
- id: voxel_spacing_newly
  doc: The voxel spacing of the newly created dimension. Default is 1.
  type: string
  inputBinding:
    prefix: -s
- id: position_where_put
  doc: The position where to put the new dimension starting from 0. Standard behaviour
    is to place it in the first position.
  type: string
  inputBinding:
    prefix: -p
- id: ignore_images_datatypes
  doc: Ignore if the images datatypes differ.
  type: boolean
  inputBinding:
    prefix: -i
- id: display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 0
- id: inputs
  doc: Source volumes of same shape and dtype.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_join_xd_to_xplus1d.py
