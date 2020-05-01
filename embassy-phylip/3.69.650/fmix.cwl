#!/usr/bin/env cwl-runner

baseCommand:
- fmix
class: CommandLineTool
cwlVersion: v1.0
id: fmix
inputs:
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: properties Ancestral states file
  id: anc_file
  inputBinding:
    prefix: -ancfile
  type: boolean
- doc: properties Mixture file
  id: mix_file
  inputBinding:
    prefix: -mixfile
  type: boolean
- doc: 'menu       [Wagner] Choose the method to use (Values: w (Wagner); c (Camin-Sokal);
    m (Mixed))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
