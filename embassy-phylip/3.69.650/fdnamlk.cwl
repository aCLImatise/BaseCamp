#!/usr/bin/env cwl-runner

baseCommand:
- fdnamlk
class: CommandLineTool
cwlVersion: v1.0
id: fdnamlk
inputs:
- doc: integer    [1] Number of substitution rate categories (Integer from 1 to 9)
  id: n_categories
  inputBinding:
    prefix: -ncategories
  type: boolean
- doc: 'menu       [Constant rate] Rate variation among sites (Values: g (Gamma distributed
    rates); i (Gamma+invariant sites); h (User defined HMM of rates); n (Constant
    rate))'
  id: gamma_type
  inputBinding:
    prefix: -gammatype
  type: boolean
