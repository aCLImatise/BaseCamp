#!/usr/bin/env cwl-runner

baseCommand:
- _fdnapars
class: CommandLineTool
cwlVersion: v1.0
id: _fdnapars
inputs:
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: integer    [10000] Number of trees to save (Integer from 1 to 1000000)
  id: max_trees
  inputBinding:
    prefix: -maxtrees
  type: boolean
- doc: boolean    [N] Use transversion parsimony
  id: transversion
  inputBinding:
    prefix: -transversion
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
