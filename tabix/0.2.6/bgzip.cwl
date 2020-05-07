class: CommandLineTool
id: bgzip.cwl
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
- id: f
  doc: overwrite files without asking
  type: boolean
  inputBinding:
    prefix: -f
- id: b
  doc: decompress at virtual file pointer INT
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
- bgzip
