class: CommandLineTool
id: _fdollop.cwl
inputs:
- id: weights
  doc: properties Phylip weights file (optional)
  type: boolean
  inputBinding:
    prefix: -weights
- id: anc_file
  doc: properties Ancestral states file
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: method
  doc: 'menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))'
  type: boolean
  inputBinding:
    prefix: -method
outputs: []
cwlVersion: v1.1
baseCommand:
- _fdollop
