class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slicedimage_checksum.cwl
inputs:
- id: pretty
  doc: Pretty-print the output file
  type: boolean
  inputBinding:
    prefix: --pretty
outputs: []
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
