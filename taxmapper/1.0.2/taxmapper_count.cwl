class: CommandLineTool
id: ../../../taxmapper_count.cwl
inputs:
- id: tax
  doc: Filtered taxonomy mapping file.
  type: string
  inputBinding:
    prefix: --tax
- id: out_one
  doc: 'Output file 1, counted taxa for first taxonomic hierarchy [default: taxa_counts_level1.tsv]'
  type: string
  inputBinding:
    prefix: --out1
- id: out_two
  doc: 'Output file 2, counted taxa for second taxonomic hierarchy [default: taxa_counts_level2.tsv]'
  type: string
  inputBinding:
    prefix: --out2
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- count
