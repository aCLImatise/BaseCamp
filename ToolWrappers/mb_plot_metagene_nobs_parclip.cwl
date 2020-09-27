class: CommandLineTool
id: mb_plot_metagene_nobs_parclip.cwl
inputs:
- id: in_downstream
  doc: ''
  type: string
  inputBinding:
    prefix: --downstream
- id: in_mb_plot_meta_gene_nobs
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
- mb-plot-metagene-nobs
- parclip
