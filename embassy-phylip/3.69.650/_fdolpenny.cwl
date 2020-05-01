#!/usr/bin/env cwl-runner

baseCommand:
- _fdolpenny
class: CommandLineTool
cwlVersion: v1.0
id: _fdolpenny
inputs:
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: properties Ancestral states file
  id: anc_file
  inputBinding:
    prefix: -ancfile
  type: boolean
- doc: toggle     [N] Use threshold parsimony
  id: do_threshold
  inputBinding:
    prefix: -dothreshold
  type: boolean
