class: CommandLineTool
id: skipseq.cwl
inputs:
- id: in_skip
  doc: "integer    [0] Number of sequences to skip at start\n(Any integer value)"
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_feature
  doc: boolean    Use feature information
  type: boolean
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skipseq
