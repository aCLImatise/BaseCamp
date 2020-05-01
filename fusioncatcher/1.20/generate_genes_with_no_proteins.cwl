#!/usr/bin/env cwl-runner

baseCommand:
- generate_genes_with_no_proteins.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_genes_with_no_proteins.py
inputs:
- doc: A text file containg all the information regarding exons, genes, proteins and
    their positions. (see 'more_exons_ensembl.txt' file)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output file containing all Ensembl gene ids which have no protein product.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The header of the output file.
  id: header
  inputBinding:
    prefix: --header
  type: string
