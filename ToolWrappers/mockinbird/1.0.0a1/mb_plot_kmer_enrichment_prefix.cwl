class: CommandLineTool
id: ../../../mb_plot_kmer_enrichment_prefix.cwl
inputs:
- id: in_start
  doc: ''
  type: string
  inputBinding:
    prefix: --start
- id: in_km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: in_mb_plot_km_er_enrichment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-enrichment
- prefix
