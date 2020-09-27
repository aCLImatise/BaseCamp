class: CommandLineTool
id: taxmapper_plot.cwl
inputs:
- id: in_tax_a
  doc: "Taxonomy file(s), counted taxa for a taxonomic\nhierarchy"
  type: string[]
  inputBinding:
    prefix: --taxa
- id: in_samples
  doc: "Optional sample names, sample names have to be in the\nsame order as taxonomy\
    \ input files. If no samplenames\nare provided, the base names of the taxa file(s)\
    \ will\nbe used."
  type: string[]
  inputBinding:
    prefix: --samples
- id: in_freq
  doc: "Output file 1, taxon matrix with normalized\nfrequencies [default: taxa_freq_norm.tsv]"
  type: File
  inputBinding:
    prefix: --freq
- id: in_counts
  doc: "Output file 2, taxon matrix with counts [default:\ntaxa_counts.tsv]"
  type: File
  inputBinding:
    prefix: --counts
- id: in_plot
  doc: "Output file 3, stacked barplot of total count\nnormalized taxa [default: taxa_freq_norm.svg]\n"
  type: File
  inputBinding:
    prefix: --plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_freq
  doc: "Output file 1, taxon matrix with normalized\nfrequencies [default: taxa_freq_norm.tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_freq)
- id: out_counts
  doc: "Output file 2, taxon matrix with counts [default:\ntaxa_counts.tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_counts)
- id: out_plot
  doc: "Output file 3, stacked barplot of total count\nnormalized taxa [default: taxa_freq_norm.svg]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_plot)
cwlVersion: v1.1
baseCommand:
- taxmapper
- plot
