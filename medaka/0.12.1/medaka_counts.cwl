#!/usr/bin/env cwl-runner

baseCommand:
- medaka_counts
class: CommandLineTool
cwlVersion: v1.0
id: medaka_counts
inputs:
- doc: alignment file.
  id: bam
  inputBinding:
    position: 0
  type: string
- doc: alignment region to sample.
  id: region
  inputBinding:
    position: 1
  type: string
- doc: 'print counts. (default: False)'
  id: print
  inputBinding:
    prefix: --print
  type: boolean
- doc: 'perform a multi-datatype tests. (default: None)'
  id: d_types
  inputBinding:
    prefix: --dtypes
  type:
    items: string
    type: array
- doc: 'additional normalisation tests. (total, fwd_rev) (default: None)'
  id: norm
  inputBinding:
    prefix: --norm
  type:
    items: string
    type: array
