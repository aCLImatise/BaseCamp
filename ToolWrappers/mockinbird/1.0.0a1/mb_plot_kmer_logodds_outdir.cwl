class: CommandLineTool
id: mb_plot_kmer_logodds_outdir.cwl
inputs:
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
- id: in_km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: in_mb_plot_km_er_log_odds
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
- mb-plot-kmer-logodds
- outdir
