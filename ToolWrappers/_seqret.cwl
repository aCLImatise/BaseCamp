class: CommandLineTool
id: _seqret.cwl
inputs:
- id: in_feature
  doc: boolean    Use feature information
  type: boolean
  inputBinding:
    prefix: -feature
- id: in_first_only
  doc: boolean    [N] Read one sequence and stop
  type: boolean
  inputBinding:
    prefix: -firstonly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _seqret
