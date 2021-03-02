class: CommandLineTool
id: medpy_extract_sub_volume_by_example.py.cwl
inputs:
- id: in_offset
  doc: Set an offset by which the extracted sub-volume size should be increased in
    all directions.
  type: long?
  inputBinding:
    prefix: --offset
- id: in_set_flag_override
  doc: Set this flag to silently override files that exist.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_display_more_information
  doc: Display more information.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_image
  doc: The input image.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: The resulting sub-volume.
  type: string
  inputBinding:
    position: 1
- id: in_mask
  doc: A mask image containing a single foreground object (non-zero).
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_sub_volume_by_example.py
