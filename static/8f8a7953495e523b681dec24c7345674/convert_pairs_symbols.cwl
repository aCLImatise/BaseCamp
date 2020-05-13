class: CommandLineTool
id: convert_pairs_symbols.py.cwl
inputs:
- id: input
  doc: The input file containing on each line two gene symbols separated by tab.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output file which will contain the Ensembl gene ids, where are two genes
    ids per line separated by tab.
  type: string
  inputBinding:
    prefix: --output
- id: filter
  doc: Input file containing the Ensembl Ids of genes pairs which should be removed,
    where are two genes ids per line separated by tab.
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_pairs_symbols.py
