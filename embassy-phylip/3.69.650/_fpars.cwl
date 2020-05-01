#!/usr/bin/env cwl-runner

baseCommand:
- _fpars
class: CommandLineTool
cwlVersion: v1.0
id: _fpars
inputs:
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: 'menu       [Wagner] Choose the parsimony method to use (Values: w (Wagner);
    c (Camin-Sokal))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
- doc: integer    [100] Number of trees to save (Integer from 1 to 1000000)
  id: max_trees
  inputBinding:
    prefix: -maxtrees
  type: boolean
- doc: integer    [0] Species number to use as outgroup (Integer 0 or more)
  id: out_gr_no
  inputBinding:
    prefix: -outgrno
  type: boolean
- doc: toggle     [N] Use threshold parsimony
  id: do_threshold
  inputBinding:
    prefix: -dothreshold
  type: boolean
- doc: boolean    [N] Print steps at each site
  id: step_box
  inputBinding:
    prefix: -stepbox
  type: boolean
- doc: boolean    [N] Print states at all nodes of tree
  id: an_cseq
  inputBinding:
    prefix: -ancseq
  type: boolean
