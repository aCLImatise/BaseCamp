class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_plot_kmer_logodds_outdir.cwl
inputs:
- id: km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
- id: mb_plot_km_er_log_odds
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-logodds
- outdir
