class: CommandLineTool
id: ace2sam.cwl
inputs:
- id: in_ace
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: output padded SAM
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: write the contig sequence in SAM
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- ace2sam
