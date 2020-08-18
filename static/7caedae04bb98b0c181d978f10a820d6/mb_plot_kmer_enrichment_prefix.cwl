class: CommandLineTool
id: ../../../mb_plot_kmer_enrichment_prefix.cwl
inputs:
- id: km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: start
  doc: ''
  type: string
  inputBinding:
    prefix: --start
- id: mb_plot_km_er_enrichment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-enrichment
- prefix
