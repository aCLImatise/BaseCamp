class: CommandLineTool
id: label_fusion_genes.py.cwl
inputs:
- id: input
  doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'find_fusion_genes.py'.
  type: string
  inputBinding:
    prefix: --input
- id: filter_gene_pairs
  doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header; the order of genes in the gene
    pairs is ignored).
  type: string
  inputBinding:
    prefix: --filter_gene_pairs
- id: filter_gene_pairs_threshold
  doc: The threshold which will be used to filter the gene fusions from '--filter_gene_pairs'
    only if there is a third column. The threshold will applied to the third column.
    Default is '0'.
  type: string
  inputBinding:
    prefix: --filter_gene_pairs_threshold
- id: filter_genes
  doc: The input text file format containing genes which are used as filter for labeling.
  type: string
  inputBinding:
    prefix: --filter_genes
- id: label
  doc: Label used to mark the candidate fusion genes which are founf in the filter.
  type: string
  inputBinding:
    prefix: --label
- id: output_fusion_genes
  doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  type: string
  inputBinding:
    prefix: --output_fusion_genes
- id: similar_gene_symbols
  doc: It labels the pairs of genes which have similar gene HUGO symbols (i.e. the
    symbol name is the same except the last character). Default is False.
  type: boolean
  inputBinding:
    prefix: --similar_gene_symbols
- id: min_dist_gene_gene
  doc: It labels the pairs of genes where the distance between the genes is below
    a given threshold (for example 100000 bp).
  type: string
  inputBinding:
    prefix: --min_dist_gene_gene
- id: min_dist_gene_gene_database
  doc: Database with exons position on chromosomes which is used to extract the gene
    positions, e.g. 'more_exons_ensembl.txt'. This is needed only when '-- min_distance_gene_gene'
    is used.
  type: string
  inputBinding:
    prefix: --min_dist_gene_gene_database
outputs: []
cwlVersion: v1.1
baseCommand:
- label_fusion_genes.py
