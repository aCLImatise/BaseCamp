#!/usr/bin/env cwl-runner

baseCommand:
- fdnacomp
class: CommandLineTool
cwlVersion: v1.0
id: fdnacomp
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
