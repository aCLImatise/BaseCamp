class: CommandLineTool
id: fmix.cwl
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
- id: mix_file
  doc: properties Mixture file
  type: boolean
  inputBinding:
    prefix: -mixfile
- id: method
  doc: 'menu       [Wagner] Choose the method to use (Values: w (Wagner); c (Camin-Sokal);
    m (Mixed))'
  type: boolean
  inputBinding:
    prefix: -method
outputs: []
cwlVersion: v1.1
baseCommand:
- fmix
