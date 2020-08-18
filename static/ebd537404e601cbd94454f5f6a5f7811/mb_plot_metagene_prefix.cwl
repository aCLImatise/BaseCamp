class: CommandLineTool
id: ../../../mb_plot_metagene_prefix.cwl
inputs:
- id: downstream_bp
  doc: ''
  type: string
  inputBinding:
    prefix: --downstream_bp
- id: mb_plot_meta_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene
- prefix
