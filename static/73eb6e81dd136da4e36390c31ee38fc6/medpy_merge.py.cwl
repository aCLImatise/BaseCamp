class: CommandLineTool
id: ../../../medpy_merge.py.cwl
inputs:
- id: in_instead_copying_data
  doc: "Instead of copying the voxel data, create an empty copy\nconserving all meta-data\
    \ if possible."
  type: boolean
  inputBinding:
    prefix: -e
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_merge.py
