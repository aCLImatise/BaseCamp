class: CommandLineTool
id: phyluce_genetrees_sort_multilocus_bootstraps.cwl
inputs:
- id: input
  doc: The input directory containing bootstrap replicates for each locus
  type: string
  inputBinding:
    prefix: --input
- id: bootstrap_replicates
  doc: The file containing bootstrap replicate sampling
  type: string
  inputBinding:
    prefix: --bootstrap_replicates
- id: output
  doc: The output directory to multi-locus bootstraps
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_sort_multilocus_bootstraps
