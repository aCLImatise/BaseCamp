class: CommandLineTool
id: htsbox_razip.cwl
inputs:
- id: c
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: decompress
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: list compressed file contents
  type: boolean
  inputBinding:
    prefix: -l
- id: b
  doc: decompress at INT position in the uncompressed file
  type: long
  inputBinding:
    prefix: -b
- id: s
  doc: decompress INT bytes in the uncompressed file
  type: long
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- razip
