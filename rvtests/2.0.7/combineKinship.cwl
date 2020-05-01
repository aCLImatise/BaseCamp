#!/usr/bin/env cwl-runner

baseCommand:
- combineKinship
class: CommandLineTool
cwlVersion: v1.0
id: combinekinship
inputs:
- doc: ': Output prefix for autosomal kinship calculation'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: ': Decomoposite calculated kinship matrix.'
  id: pc_a
  inputBinding:
    prefix: --pca
  type: boolean
- doc: ': Specify number of parallel threads to speed up'
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
