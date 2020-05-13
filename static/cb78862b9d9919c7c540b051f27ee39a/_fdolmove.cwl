class: CommandLineTool
id: _fdolmove.cwl
inputs:
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: anc_file
  doc: properties Ancestral states file
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: factor_file
  doc: properties Factors file
  type: boolean
  inputBinding:
    prefix: -factorfile
- id: method
  doc: 'menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))'
  type: boolean
  inputBinding:
    prefix: -method
- id: do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
outputs: []
cwlVersion: v1.1
baseCommand:
- _fdolmove
