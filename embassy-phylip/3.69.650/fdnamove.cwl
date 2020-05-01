#!/usr/bin/env cwl-runner

baseCommand:
- fdnamove
class: CommandLineTool
cwlVersion: v1.0
id: fdnamove
inputs:
- doc: properties Weights file - ignore sites with weight zero
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
