#!/usr/bin/env cwl-runner

baseCommand:
- kinshipDecompose
class: CommandLineTool
cwlVersion: v1.0
id: kinshipdecompose
inputs:
- doc: ': Input kinship file'
  id: in
  inputBinding:
    prefix: --in
  type: boolean
- doc: ': Output prefix for autosomal kinship calculation'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
