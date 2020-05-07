class: CommandLineTool
id: _equicktandem.cwl
inputs:
- id: max_repeat
  doc: integer    [600] Maximum repeat size (Any integer value)
  type: boolean
  inputBinding:
    prefix: -maxrepeat
- id: threshold
  doc: integer    [20] Threshold score (Any integer value)
  type: boolean
  inputBinding:
    prefix: -threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- _equicktandem
