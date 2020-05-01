#!/usr/bin/env cwl-runner

baseCommand:
- label_ambiguous_fusion_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: label_ambiguous_fusion_genes.py
inputs:
- doc: File containing the candidate fusion genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Label used for marking the candidate fusion genes.
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: "The constant called 'factor' from the inequality: counts_mapping_ambiguously\
    \ > factor * counts_supporting_pairs. If this is found to be true then the candidate\
    \ fusion gene will marked as ambiguous."
  id: factor
  inputBinding:
    prefix: --factor
  type: string
- doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  id: input_ambiguous
  inputBinding:
    prefix: --input_ambiguous
  type: string
- doc: File containing the candidate fusion genes from the input and an extra column
    with their associatied counts of common mapping reads.
  id: output_fusion_genes
  inputBinding:
    prefix: --output_fusion_genes
  type: string
