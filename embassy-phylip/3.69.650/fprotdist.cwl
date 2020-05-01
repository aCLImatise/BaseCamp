#!/usr/bin/env cwl-runner

baseCommand:
- fprotdist
class: CommandLineTool
cwlVersion: v1.0
id: fprotdist
inputs:
- doc: integer    [1] Number of substitution rate categories (Integer from 1 to 9)
  id: n_categories
  inputBinding:
    prefix: -ncategories
  type: boolean
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: 'menu       [j] Choose the method to use (Values: j (Jones-Taylor-Thornton
    matrix); h (Henikoff/Tiller PMB matrix); d (Dayhoff PAM matrix); k (Kimura formula);
    s (Similarity table); c (Categories model))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
