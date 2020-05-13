class: CommandLineTool
id: label_fusion_genes_trim2.py.cwl
inputs:
- id: input
  doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'find_fusion_genes.py'.
  type: string
  inputBinding:
    prefix: --input
- id: fusions_pairs
  doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header; the order of genes in the gene
    pairs is ignored).
  type: string
  inputBinding:
    prefix: --fusions_pairs
- id: smaller_pairs
  doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header; the order of genes in the gene
    pairs is ignored).
  type: string
  inputBinding:
    prefix: --smaller_pairs
- id: output_fusion_genes
  doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  type: string
  inputBinding:
    prefix: --output_fusion_genes
outputs: []
cwlVersion: v1.1
baseCommand:
- label_fusion_genes_trim2.py
