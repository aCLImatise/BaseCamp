class: CommandLineTool
id: tfscan.cwl
inputs:
- id: in_menu
  doc: "menu       [V] Select class (Values: F (fungi); I\n(insect); P (plant); V\
    \ (vertebrate); O\n(other); C (Custom))"
  type: boolean
  inputBinding:
    prefix: -menu
- id: in_mismatch
  doc: integer    [0] Number of mismatches (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_minlength
  doc: "integer    [1] Display matches equal to or above this\nlength (Integer 1 or\
    \ more)"
  type: boolean
  inputBinding:
    prefix: -minlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tfscan
