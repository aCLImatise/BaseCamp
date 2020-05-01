#!/usr/bin/env cwl-runner

baseCommand:
- segtools-compare
class: CommandLineTool
cwlVersion: v1.0
id: segtools-compare
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 2
  type: string
- doc: Measure the base-wise edit distance between the two specified segmentations
  id: edit_distance
  inputBinding:
    prefix: --edit-distance
  type: boolean
- doc: Compute values only for one chromosome.
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
