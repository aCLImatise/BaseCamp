class: CommandLineTool
id: fdnapars.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: max_trees
  doc: integer    [10000] Number of trees to save (Integer from 1 to 1000000)
  type: boolean
  inputBinding:
    prefix: -maxtrees
- id: transversion
  doc: boolean    [N] Use transversion parsimony
  type: boolean
  inputBinding:
    prefix: -transversion
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
- fdnapars
