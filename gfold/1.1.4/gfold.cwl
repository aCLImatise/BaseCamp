#!/usr/bin/env cwl-runner

baseCommand:
- gfold
class: CommandLineTool
cwlVersion: v1.0
id: gfold
inputs:
- doc: ':   Generalized fold change for ranking differentially expressed    genes
    from RNA-seq data.'
  id: g_fold
  inputBinding:
    position: 0
  type: string
- doc: ':   Jianxing Feng (jianxing.tongji@gmail.com)'
  id: author
  inputBinding:
    position: 1
  type: string
- doc: ':   Sun May 24 07:42:36 CST 2015'
  id: date
  inputBinding:
    position: 2
  type: string
- doc: ':   V1.1.4'
  id: version
  inputBinding:
    position: 3
  type: string
