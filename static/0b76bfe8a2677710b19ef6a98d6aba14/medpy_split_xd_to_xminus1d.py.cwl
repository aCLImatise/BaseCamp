class: CommandLineTool
id: medpy_split_xd_to_xminus1d.py.cwl
inputs:
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
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: "Target volumes. Has to include the sequence \"{}\" in the place\nwhere the\
    \ volume number should be placed."
  type: string
  inputBinding:
    position: 1
- id: in_dimension
  doc: The dimension along which to split (starting from 0).
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
- medpy_split_xd_to_xminus1d.py
