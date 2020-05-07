class: CommandLineTool
id: fprotpars.cwl
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
  doc: boolean    [N] Print sequences at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
outputs: []
cwlVersion: v1.1
baseCommand:
- fprotpars
