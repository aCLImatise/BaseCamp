class: CommandLineTool
id: medpy_swap_dimensions.py.cwl
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
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
- id: in_dimension_one
  doc: First dimension to swap (starting from 0).
  type: long
  inputBinding:
    position: 2
- id: in_dimension_two
  doc: Second dimension to swap (starting from 0).
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_swap_dimensions.py
