#!/usr/bin/env cwl-runner

baseCommand:
- label_fusion_genes_trim2.py
class: CommandLineTool
cwlVersion: v1.0
id: label_fusion_genes_trim2.py
inputs:
- doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'find_fusion_genes.py'.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header; the order of genes in the gene
    pairs is ignored).
  id: fusions_pairs
  inputBinding:
    prefix: --fusions_pairs
  type: string
- doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header; the order of genes in the gene
    pairs is ignored).
  id: smaller_pairs
  inputBinding:
    prefix: --smaller_pairs
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  id: output_fusion_genes
  inputBinding:
    prefix: --output_fusion_genes
  type: string
