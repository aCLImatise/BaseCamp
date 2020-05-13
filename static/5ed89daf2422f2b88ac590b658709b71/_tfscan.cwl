class: CommandLineTool
id: _tfscan.cwl
inputs:
- id: menu
  doc: 'menu       [V] Select class (Values: F (fungi); I (insect); P (plant); V (vertebrate);
    O (other); C (Custom))'
  type: boolean
  inputBinding:
    prefix: -menu
- id: mismatch
  doc: integer    [0] Number of mismatches (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs: []
cwlVersion: v1.1
baseCommand:
- _tfscan
