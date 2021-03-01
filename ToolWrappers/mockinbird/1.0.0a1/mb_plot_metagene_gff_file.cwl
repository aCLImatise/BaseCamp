class: CommandLineTool
id: mb_plot_metagene_gff_file.cwl
inputs:
- id: in_downstream_bp
  doc: ''
  type: string?
  inputBinding:
    prefix: --downstream_bp
- id: in_mb_plot_meta_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene
- gff_file
