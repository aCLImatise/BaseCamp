class: CommandLineTool
id: medpy_label_count.py.cwl
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
- id: in_images
  doc: One or more label images.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_label_count.py
