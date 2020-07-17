class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slicedimage_checksum_out_path.cwl
inputs:
- id: pretty
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pretty
- id: sliced_image
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: checksum
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_path
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
- out_path
