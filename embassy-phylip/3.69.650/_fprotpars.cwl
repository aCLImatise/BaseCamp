#!/usr/bin/env cwl-runner

baseCommand:
- _fprotpars
class: CommandLineTool
cwlVersion: v1.0
id: _fprotpars
inputs:
- doc: properties Phylip weights file (optional)
  id: weights
  inputBinding:
    prefix: -weights
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
- doc: boolean    [N] Print sequences at all nodes of tree
  id: an_cseq
  inputBinding:
    prefix: -ancseq
  type: boolean
