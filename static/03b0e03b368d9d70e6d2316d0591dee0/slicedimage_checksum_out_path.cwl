class: CommandLineTool
id: slicedimage_checksum_out_path.cwl
inputs:
- id: in_pretty
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_sliced_image
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_checksum
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_url
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_path
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
- out_path
