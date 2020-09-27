class: CommandLineTool
id: jimage_extract.cwl
inputs:
- id: in_j_image
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_extract_vertical_line_info_vertical_line_list_vertical_line_verify
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_j_image_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jimage
- extract
