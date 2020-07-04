class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_razip.cwl
inputs:
- id: write_standard_output
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: -c
- id: decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: -d
- id: list_compressed_contents
  doc: list compressed file contents
  type: boolean
  inputBinding:
    prefix: -l
- id: decompress_int_position
  doc: decompress at INT position in the uncompressed file
  type: long
  inputBinding:
    prefix: -b
- id: decompress_int_bytes
  doc: decompress INT bytes in the uncompressed file
  type: long
  inputBinding:
    prefix: -s
- id: ra_zip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- razip
