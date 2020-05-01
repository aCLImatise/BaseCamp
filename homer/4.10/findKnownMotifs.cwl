#!/usr/bin/env cwl-runner

baseCommand:
- findKnownMotifs.pl
class: CommandLineTool
cwlVersion: v1.0
id: findknownmotifs.pl
inputs:
- doc: '(Known motif file, default: /tmp/tmp99omlp31/share/homer-4.10-0/.//data/knownTFs/known.motifs)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: <both|+|->
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: '<hypergeo|binomial> (default: hypergeo)'
  id: stat
  inputBinding:
    prefix: -stat
  type: boolean
- doc: '<#> (p-value cutoff, default: 0.01)'
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: (Optimize motif degeneracy thresholds to maximize enrichment)
  id: optimize
  inputBinding:
    prefix: -optimize
  type: boolean
- doc: (use original homer, default, for now...)
  id: homer
  inputBinding:
    prefix: -homer
  type: boolean
- doc: (use homer2)
  id: home_r2
  inputBinding:
    prefix: -homer2
  type: boolean
- doc: <#> (number of CPUs to use, homer2 only)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '<#> (size in MB of statistics cache, default: 500)'
  id: cache
  inputBinding:
    prefix: -cache
  type: boolean
- doc: (scale logos by information content)
  id: bits
  inputBinding:
    prefix: -bits
  type: boolean
- doc: (internal option)
  id: dbview
  inputBinding:
    prefix: -dbview
  type: boolean
- doc: (Use Weblogo/seqlogo/ghostscript, by default now generates SVG logos)
  id: seq_logo
  inputBinding:
    prefix: -seqlogo
  type: boolean
- doc: (output RNA logos i.e. U instead of T)
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
