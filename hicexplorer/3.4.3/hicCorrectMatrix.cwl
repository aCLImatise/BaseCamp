#!/usr/bin/env cwl-runner

baseCommand:
- hicCorrectMatrix
class: CommandLineTool
cwlVersion: v1.0
id: hiccorrectmatrix
inputs:
- doc: <upper threshold> -o corrected_matrix
  id: filter_threshold
  inputBinding:
    prefix: --filterThreshold
  type: string
