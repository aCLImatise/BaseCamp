class: CommandLineTool
id: label_ambiguous_fusion_genes.py.cwl
inputs:
- id: input
  doc: File containing the candidate fusion genes.
  type: string
  inputBinding:
    prefix: --input
- id: label
  doc: Label used for marking the candidate fusion genes.
  type: string
  inputBinding:
    prefix: --label
- id: factor
  doc: "The constant called 'factor' from the inequality: counts_mapping_ambiguously\
    \ > factor * counts_supporting_pairs. If this is found to be true then the candidate\
    \ fusion gene will marked as ambiguous."
  type: string
  inputBinding:
    prefix: --factor
- id: input_ambiguous
  doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  type: string
  inputBinding:
    prefix: --input_ambiguous
- id: output_fusion_genes
  doc: File containing the candidate fusion genes from the input and an extra column
    with their associatied counts of common mapping reads.
  type: string
  inputBinding:
    prefix: --output_fusion_genes
outputs: []
cwlVersion: v1.1
baseCommand:
- label_ambiguous_fusion_genes.py
