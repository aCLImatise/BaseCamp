class: CommandLineTool
id: generate_pairs_pseudogenes.py.cwl
inputs:
- id: input
  doc: Input file with genes positions.
  type: string
  inputBinding:
    prefix: --input
- id: paralogs
  doc: Input file containing the paralogs genes. It is optional and by using the pairs
    of paralog genes are combined with the pairs of pseudogenes.
  type: string
  inputBinding:
    prefix: --paralogs
- id: output
  doc: The output directory where the list of pairs of pseudogenes are written. Default
    is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_pairs_pseudogenes.py
