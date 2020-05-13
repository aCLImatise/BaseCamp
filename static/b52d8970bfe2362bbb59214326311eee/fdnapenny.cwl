class: CommandLineTool
id: fdnapenny.cwl
inputs:
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
- fdnapenny
