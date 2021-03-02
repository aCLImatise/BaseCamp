class: CommandLineTool
id: medpy_extract_contour.py.cwl
inputs:
- id: in_width
  doc: Width of the contour.
  type: string?
  inputBinding:
    prefix: --width
- id: in_dimension
  doc: Extract contours only along this dimension.
  type: string?
  inputBinding:
    prefix: --dimension
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_contour.py
