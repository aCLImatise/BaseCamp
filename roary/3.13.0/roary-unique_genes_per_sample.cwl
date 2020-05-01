#!/usr/bin/env cwl-runner

baseCommand:
- roary-unique_genes_per_sample
class: CommandLineTool
cwlVersion: v1.0
id: roary-unique_genes_per_sample
inputs:
- doc: output filename [unique_genes_per_sample.tsv]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: clusters filename [clustered_proteins]
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
