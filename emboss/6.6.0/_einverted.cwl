class: CommandLineTool
id: _einverted.cwl
inputs:
- id: gap
  doc: integer    [12] Gap penalty (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -gap
- id: threshold
  doc: integer    [50] Minimum score threshold (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -threshold
- id: match
  doc: integer    [3] Match score (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -match
- id: mismatch
  doc: integer    [-4] Mismatch score (Integer up to 0)
  type: boolean
  inputBinding:
    prefix: -mismatch
outputs: []
cwlVersion: v1.1
baseCommand:
- _einverted
