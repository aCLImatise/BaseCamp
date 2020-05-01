#!/usr/bin/env cwl-runner

baseCommand:
- getDifferentialPeaksReplicates.pl
class: CommandLineTool
cwlVersion: v1.0
id: getdifferentialpeaksreplicates.pl
inputs:
- doc: '[background tagdir2] ...'
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: '[Input tagdir2] ...'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: '<#> (fold enrichment over bg, default: 2)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '<#> (FDR over bg, default: 0.05)'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: <#>, -F <#>, -L <#> (parameters for findPeaks)
  id: fdr
  inputBinding:
    prefix: -fdr
  type: boolean
- doc: (genome version to use for annotation)
  id: genome
  inputBinding:
    prefix: -genome
  type: string
- doc: '| -DESeq | -edgeR (differential stats algorithm, default: DESeq2)'
  id: deseq2
  inputBinding:
    prefix: -DESeq2
  type: boolean
- doc: '(normalize signal across peaks, default: normalize to read totals)'
  id: balanced
  inputBinding:
    prefix: -balanced
  type: boolean
- doc: <#> (standardize estimated fragment length across analysis)
  id: frag_length
  inputBinding:
    prefix: -fragLength
  type: boolean
