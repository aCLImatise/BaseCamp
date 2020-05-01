#!/usr/bin/env cwl-runner

baseCommand:
- halladata
class: CommandLineTool
cwlVersion: v1.0
id: halladata
inputs:
- doc: additional output is printed
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'number of features in the input file D*N, Rows: D features and columns: N
    samples '
  id: features
  inputBinding:
    prefix: --features
  type: string
- doc: 'number of samples in the input file D*N, Rows: D features and columns: N samples '
  id: samples
  inputBinding:
    prefix: --samples
  type: string
- doc: 'number of blocks, default = min(number_features/2.0, math.log(number_features,2)*1.5) '
  id: clusters
  inputBinding:
    prefix: --clusters
  type: string
- doc: 'association type [sine, parabola, log, line, L, step, happy_face, default
    =parabola] '
  id: association
  inputBinding:
    prefix: --association
  type: string
- doc: 'Distribution [normal, uniform, default =uniform] '
  id: distribution
  inputBinding:
    prefix: --distribution
  type: string
- doc: noise between associated blocks[0 is no noise, 1 is complete noise, default
    =0.25]
  id: noise_between
  inputBinding:
    prefix: --noise-between
  type: string
- doc: noise within blocks[0 is no noise, 1 is complete noise, default =0.25]
  id: noise_within
  inputBinding:
    prefix: --noise-within
  type: string
- doc: the output directory
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'structure [balanced, imbalanced, default =balanced] '
  id: structure
  inputBinding:
    prefix: --structure
  type: string
- doc: 'structure [balanced, imbalanced, default =balanced] '
  id: cluster_percentage
  inputBinding:
    prefix: --cluster-percentage
  type: string
