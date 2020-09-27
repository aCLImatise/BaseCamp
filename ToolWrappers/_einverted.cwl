class: CommandLineTool
id: _einverted.cwl
inputs:
- id: in_gap
  doc: integer    [12] Gap penalty (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_threshold
  doc: "integer    [50] Minimum score threshold (Integer 0 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -threshold
- id: in_match
  doc: integer    [3] Match score (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -match
- id: in_mismatch
  doc: integer    [-4] Mismatch score (Integer up to 0)
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_max_repeat
  doc: "integer    [2000] Maximum separation between the start\nof repeat and the\
    \ end of the inverted\nrepeat. (Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -maxrepeat
- id: in_characters_dot
  doc: 'Additional (Optional) qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _einverted
