class: CommandLineTool
id: ../../../medpy_stack_sub_volumes.py.cwl
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
- id: in_supplied_images_containing
  doc: If supplied, all images containing only 1s are treated as empty image.
  type: boolean
  inputBinding:
    prefix: -z
- id: in_stack_resversed_order
  doc: Stack in resversed order as how the files are supplied.
  type: boolean
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_stack_sub_volumes.py
