class: CommandLineTool
id: seqretsetall.cwl
inputs:
- id: in_feature
  doc: boolean    Use feature information
  type: boolean?
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqretsetall
