class: CommandLineTool
id: ../../../medpy_graphcut_voxel.py.cwl
inputs:
- id: in_boundary
  doc: Depending on the selected term, an additional
  type: string
  inputBinding:
    prefix: --boundary
- id: in_set_flag_take
  doc: Set this flag to take the pixel spacing of the image into account. The spacing
    data will be extracted from the baddtional image.
  type: boolean
  inputBinding:
    prefix: -s
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_graphcut_voxel.py
