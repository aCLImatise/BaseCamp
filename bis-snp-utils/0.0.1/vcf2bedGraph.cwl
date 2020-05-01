#!/usr/bin/env cwl-runner

baseCommand:
- vcf2bedGraph.pl
class: CommandLineTool
cwlVersion: v1.0
id: vcf2bedgraph.pl
inputs:
- doc: ': sample order choose to output as bed file when there are multiple samples
    in the same vcf file. 1 means the first sample (default: 1)'
  id: sample_order
  inputBinding:
    prefix: --sample_order
  type: long
- doc: ": minimum number of CT reads, otherwise, methy column will be '.' (default:\
    \ 1)"
  id: min_ct
  inputBinding:
    prefix: --minCT
  type: long
