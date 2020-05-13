class: CommandLineTool
id: pbgzip.cwl
inputs:
- id: s
  doc: the block size when reading uncompressed data (must be less than or equal to
    65536; -1 is auto) [-1]
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- pbgzip
