#!/usr/bin/env cwl-runner

baseCommand:
- fdollop
class: CommandLineTool
cwlVersion: v1.0
id: fdollop
inputs:
- doc: properties Phylip weights file (optional)
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: properties Ancestral states file
  id: anc_file
  inputBinding:
    prefix: -ancfile
  type: boolean
- doc: 'menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
