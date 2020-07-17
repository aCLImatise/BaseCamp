class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medpy_extract_sub_volume_auto.py.cwl
inputs:
- id: set_flag_override
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
- id: image
  doc: An image of arbitrary dimensions that should be split.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output volumes. Has to include the sequence "{}" in the place where the volume
    number should be placed.
  type: string
  inputBinding:
    position: 1
- id: dimension
  doc: The dimension in which direction to split (starting from 0:x).
  type: string
  inputBinding:
    position: 2
- id: maxsize
  doc: The produced volumes will always be smaller than this size (in terms of slices
    in the cut-dimension).
  type: long
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume_auto.py
