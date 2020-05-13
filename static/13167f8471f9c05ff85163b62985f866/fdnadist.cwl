class: CommandLineTool
id: fdnadist.cwl
inputs:
- id: method
  doc: 'menu       [F84 distance model] Choose the method to use (Values: f (F84 distance
    model); k (Kimura 2-parameter distance); j (Jukes-Cantor distance); l (LogDet
    distance); s (Similarity table))'
  type: boolean
  inputBinding:
    prefix: -method
- id: weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
outputs: []
cwlVersion: v1.1
baseCommand:
- fdnadist
