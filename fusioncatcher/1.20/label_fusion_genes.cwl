#!/usr/bin/env cwl-runner

baseCommand:
- label_fusion_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: label_fusion_genes.py
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
  id: filter_gene_pairs
  inputBinding:
    prefix: --filter_gene_pairs
  type: string
- doc: The threshold which will be used to filter the gene fusions from '--filter_gene_pairs'
    only if there is a third column. The threshold will applied to the third column.
    Default is '0'.
  id: filter_gene_pairs_threshold
  inputBinding:
    prefix: --filter_gene_pairs_threshold
  type: string
- doc: The input text file format containing genes which are used as filter for labeling.
  id: filter_genes
  inputBinding:
    prefix: --filter_genes
  type: string
- doc: Label used to mark the candidate fusion genes which are founf in the filter.
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  id: output_fusion_genes
  inputBinding:
    prefix: --output_fusion_genes
  type: string
- doc: It labels the pairs of genes which have similar gene HUGO symbols (i.e. the
    symbol name is the same except the last character). Default is False.
  id: similar_gene_symbols
  inputBinding:
    prefix: --similar_gene_symbols
  type: boolean
- doc: It labels the pairs of genes where the distance between the genes is below
    a given threshold (for example 100000 bp).
  id: min_dist_gene_gene
  inputBinding:
    prefix: --min_dist_gene_gene
  type: string
- doc: Database with exons position on chromosomes which is used to extract the gene
    positions, e.g. 'more_exons_ensembl.txt'. This is needed only when '-- min_distance_gene_gene'
    is used.
  id: min_dist_gene_gene_database
  inputBinding:
    prefix: --min_dist_gene_gene_database
  type: string
