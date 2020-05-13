class: CommandLineTool
id: _frestml.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: n_jumble
  doc: integer    [0] Number of times to randomise (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -njumble
- id: site_length
  doc: integer    [6] Site length (Integer from 1 to 8)
  type: boolean
  inputBinding:
    prefix: -sitelength
outputs: []
cwlVersion: v1.1
baseCommand:
- _frestml
