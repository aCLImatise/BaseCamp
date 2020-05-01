#!/usr/bin/env cwl-runner

baseCommand:
- fdnadist
class: CommandLineTool
cwlVersion: v1.0
id: fdnadist
inputs:
- doc: 'menu       [F84 distance model] Choose the method to use (Values: f (F84 distance
    model); k (Kimura 2-parameter distance); j (Jukes-Cantor distance); l (LogDet
    distance); s (Similarity table))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
