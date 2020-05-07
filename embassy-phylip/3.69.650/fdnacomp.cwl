class: CommandLineTool
id: fdnacomp.cwl
inputs:
- id: weights
  doc: properties Phylip weights file (optional)
  type: boolean
  inputBinding:
    prefix: -weights
- id: out_gr_no
  doc: integer    [0] Species number to use as outgroup (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -outgrno
outputs: []
cwlVersion: v1.1
baseCommand:
- fdnacomp
