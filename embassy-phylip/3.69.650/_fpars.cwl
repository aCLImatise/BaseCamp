class: CommandLineTool
id: _fpars.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: method
  doc: 'menu       [Wagner] Choose the parsimony method to use (Values: w (Wagner);
    c (Camin-Sokal))'
  type: boolean
  inputBinding:
    prefix: -method
- id: max_trees
  doc: integer    [100] Number of trees to save (Integer from 1 to 1000000)
  type: boolean
  inputBinding:
    prefix: -maxtrees
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
- id: step_box
  doc: boolean    [N] Print steps at each site
  type: boolean
  inputBinding:
    prefix: -stepbox
- id: an_cseq
  doc: boolean    [N] Print states at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
outputs: []
cwlVersion: v1.1
baseCommand:
- _fpars
