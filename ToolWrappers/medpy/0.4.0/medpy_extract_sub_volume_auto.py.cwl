class: CommandLineTool
id: medpy_extract_sub_volume_auto.py.cwl
inputs:
- id: in_set_flag_override
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
- id: in_image
  doc: An image of arbitrary dimensions that should be split.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output volumes. Has to include the sequence "{}" in the place where the volume
    number should be placed.
  type: string
  inputBinding:
    position: 1
- id: in_dimension
  doc: The dimension in which direction to split (starting from 0:x).
  type: string
  inputBinding:
    position: 2
- id: in_maxsize
  doc: The produced volumes will always be smaller than this size (in terms of slices
    in the cut-dimension).
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume_auto.py
