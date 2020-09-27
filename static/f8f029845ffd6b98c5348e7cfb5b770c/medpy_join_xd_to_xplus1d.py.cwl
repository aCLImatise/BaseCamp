class: CommandLineTool
id: medpy_join_xd_to_xplus1d.py.cwl
inputs:
- id: in_voxel_spacing_newly
  doc: The voxel spacing of the newly created dimension. Default is 1.
  type: long
  inputBinding:
    prefix: -s
- id: in_position_where_put
  doc: The position where to put the new dimension starting from 0. Standard behaviour
    is to place it in the first position.
  type: long
  inputBinding:
    prefix: -p
- id: in_ignore_datatypes_differ
  doc: Ignore if the images datatypes differ.
  type: boolean
  inputBinding:
    prefix: -i
- id: in_display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output
  doc: Target volume.
  type: string
  inputBinding:
    position: 0
- id: in_inputs
  doc: Source volumes of same shape and dtype.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_join_xd_to_xplus1d.py
