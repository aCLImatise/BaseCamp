class: CommandLineTool
id: slicedimage_checksum.cwl
inputs:
- id: pretty
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pretty
outputs: []
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
