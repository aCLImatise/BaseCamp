#!/usr/bin/env cwl-runner

baseCommand:
- fdolmove
class: CommandLineTool
cwlVersion: v1.0
id: fdolmove
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
- doc: properties Factors file
  id: factor_file
  inputBinding:
    prefix: -factorfile
  type: boolean
- doc: 'menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
- doc: toggle     [N] Use threshold parsimony
  id: do_threshold
  inputBinding:
    prefix: -dothreshold
  type: boolean
