class: CommandLineTool
id: fpromlk.cwl
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
- id: model
  doc: 'menu       [Jones-Taylor-Thornton] Probability model for amino acid change
    (Values: j (Jones-Taylor-Thornton); h (Henikoff/Tillier PMBs); d (Dayhoff PAM))'
  type: boolean
  inputBinding:
    prefix: -model
- id: gamma_type
  doc: 'menu       [n] Rate variation among sites (Values: g (Gamma distributed rates);
    i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant rate))'
  type: boolean
  inputBinding:
    prefix: -gammatype
outputs: []
cwlVersion: v1.1
baseCommand:
- fpromlk
