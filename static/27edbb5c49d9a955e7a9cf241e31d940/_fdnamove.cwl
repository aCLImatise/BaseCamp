class: CommandLineTool
id: _fdnamove.cwl
inputs:
- id: weights
  doc: properties Weights file - ignore sites with weight zero
  type: boolean
  inputBinding:
    prefix: -weights
- id: out_gr_no
  doc: integer    [0] Species number to use as outgroup (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- _fdnamove
