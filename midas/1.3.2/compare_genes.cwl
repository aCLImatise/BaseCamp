#!/usr/bin/env cwl-runner

baseCommand:
- compare_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: compare_genes.py
inputs:
- doc: Path to output from `merge_midas.py genes` for one species directory should
    be named according to a species_id and contains files 'genes_*.txt')
  id: path
  inputBinding:
    position: 0
  type: File
- doc: Path to output file
  id: out
  inputBinding:
    prefix: --out
  type: File
- doc: Maximum number of genes to use. Useful for quick tests (use all)
  id: max_genes
  inputBinding:
    prefix: --max_genes
  type: long
- doc: Maximum number of samples to use. Useful for quick tests (use all)
  id: max_samples
  inputBinding:
    prefix: --max_samples
  type: long
- doc: Metric to use for computing distances (jaccard)
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: Data type to use for comparing genes (presabs)
  id: d_type
  inputBinding:
    prefix: --dtype
  type: string
- doc: Cutoff to use for determining presence absence (0.35)
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: double
