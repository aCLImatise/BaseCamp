class: CommandLineTool
id: splitsource.cwl
inputs:
- id: in_feature
  doc: boolean    [N] Retain feature information
  type: boolean
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitsource
