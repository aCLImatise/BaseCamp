class: CommandLineTool
id: fdnamlk.cwl
inputs:
- id: n_categories
  doc: integer    [1] Number of substitution rate categories (Integer from 1 to 9)
  type: boolean
  inputBinding:
    prefix: -ncategories
- id: gamma_type
  doc: 'menu       [Constant rate] Rate variation among sites (Values: g (Gamma distributed
    rates); i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant
    rate))'
  type: boolean
  inputBinding:
    prefix: -gammatype
outputs: []
cwlVersion: v1.1
baseCommand:
- fdnamlk
