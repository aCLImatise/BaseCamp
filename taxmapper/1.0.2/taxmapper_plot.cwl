class: CommandLineTool
id: taxmapper_plot.cwl
inputs:
- id: tax_a
  doc: Taxonomy file(s), counted taxa for a taxonomic hierarchy
  type: string[]
  inputBinding:
    prefix: --taxa
- id: samples
  doc: Optional sample names, sample names have to be in the same order as taxonomy
    input files. If no samplenames are provided, the base names of the taxa file(s)
    will be used.
  type: string[]
  inputBinding:
    prefix: --samples
- id: freq
  doc: 'Output file 1, taxon matrix with normalized frequencies [default: taxa_freq_norm.tsv]'
  type: string
  inputBinding:
    prefix: --freq
- id: counts
  doc: 'Output file 2, taxon matrix with counts [default: taxa_counts.tsv]'
  type: string
  inputBinding:
    prefix: --counts
- id: plot
  doc: 'Output file 3, stacked barplot of total count normalized taxa [default: taxa_freq_norm.svg]'
  type: string
  inputBinding:
    prefix: --plot
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- plot
