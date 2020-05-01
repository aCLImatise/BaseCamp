#!/usr/bin/env cwl-runner

baseCommand:
- _fdnapenny
class: CommandLineTool
cwlVersion: v1.0
id: _fdnapenny
inputs:
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
