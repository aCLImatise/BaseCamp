#!/usr/bin/env cwl-runner

baseCommand:
- _fdiscboot
class: CommandLineTool
cwlVersion: v1.0
id: _fdiscboot
inputs:
- doc: properties File of mixtures
  id: mix_file
  inputBinding:
    prefix: -mixfile
  type: boolean
- doc: properties File of ancestors
  id: anc_file
  inputBinding:
    prefix: -ancfile
  type: boolean
- doc: properties Weights file
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: properties Factors file
  id: factor_file
  inputBinding:
    prefix: -factorfile
  type: boolean
- doc: 'menu       [b] Choose test (Values: b (Bootstrap); j (Jackknife); c (Permute
    species for each character); o (Permute character order); s (Permute within species);
    r (Rewrite data))'
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: boolean    [N] Print out the data at start of run
  id: print_data
  inputBinding:
    prefix: -printdata
  type: boolean
