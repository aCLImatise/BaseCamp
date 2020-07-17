class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_plot_metagene_nobs_prefix.cwl
inputs:
- id: downstream
  doc: ''
  type: string
  inputBinding:
    prefix: --downstream
- id: mb_plot_meta_gene_nobs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene-nobs
- prefix
