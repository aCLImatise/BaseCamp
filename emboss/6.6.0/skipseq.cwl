class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/skipseq.cwl
inputs:
- id: skip
  doc: integer    [0] Number of sequences to skip at start (Any integer value)
  type: boolean
  inputBinding:
    prefix: -skip
outputs: []
cwlVersion: v1.1
baseCommand:
- skipseq
