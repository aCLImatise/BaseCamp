class: CommandLineTool
id: _fprotdist.cwl
inputs:
- id: n_categories
  doc: integer    [1] Number of substitution rate categories (Integer from 1 to 9)
  type: boolean
  inputBinding:
    prefix: -ncategories
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: method
  doc: 'menu       [j] Choose the method to use (Values: j (Jones-Taylor-Thornton
    matrix); h (Henikoff/Tiller PMB matrix); d (Dayhoff PAM matrix); k (Kimura formula);
    s (Similarity table); c (Categories model))'
  type: boolean
  inputBinding:
    prefix: -method
outputs: []
cwlVersion: v1.1
baseCommand:
- _fprotdist
