class: CommandLineTool
id: medpy_graphcut_label.py.cwl
inputs:
- id: in_boundary
  doc: Depending on the selected term, an additional
  type: string
  inputBinding:
    prefix: --boundary
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
- id: in_b_additional
  doc: The additional image required by the boundary term. See there for details.
  type: string
  inputBinding:
    position: 0
- id: in_region
  doc: The region image of the image to segment.
  type: string
  inputBinding:
    position: 1
- id: in_markers
  doc: Binary image containing the foreground (=1) and background (=2) markers.
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: The output image containing the segmentation.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_graphcut_label.py
