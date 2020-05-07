class: CommandLineTool
id: generate_genes_with_no_proteins.py.cwl
inputs:
- id: input
  doc: A text file containg all the information regarding exons, genes, proteins and
    their positions. (see 'more_exons_ensembl.txt' file)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output file containing all Ensembl gene ids which have no protein product.
  type: string
  inputBinding:
    prefix: --output
- id: header
  doc: The header of the output file.
  type: string
  inputBinding:
    prefix: --header
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_genes_with_no_proteins.py
