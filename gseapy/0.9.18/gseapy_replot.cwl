class: CommandLineTool
id: gseapy_replot.cwl
inputs:
- id: in_dir
  doc: The GSEA desktop results directroy that you want to reproduce the figure
  type: string
  inputBinding:
    prefix: --indir
- id: o
  doc: ', --outdir         The GSEApy output directory. Default: the current working
    directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ", --format         File extensions supported by Matplotlib active backend,\
    \ choose from {'pdf', 'png', 'jpeg','ps', 'eps','svg'}. Default: 'pdf'."
  type: boolean
  inputBinding:
    prefix: -f
- id: fs
  doc: 'height, --figsize width height The figsize keyword argument need two parameters
    to define. Default: (6.5, 6)'
  type: string
  inputBinding:
    prefix: --fs
- id: graph
  doc: 'Numbers of top graphs produced. Default: 20'
  type: long
  inputBinding:
    prefix: --graph
- id: no_plot
  doc: 'Speed up computing by suppressing the plot output.This is useful only if data
    are interested. Default: False.'
  type: boolean
  inputBinding:
    prefix: --no-plot
- id: verbose
  doc: Increase output verbosity, print out progress of your job
  type: boolean
  inputBinding:
    prefix: --verbose
- id: weight
  doc: 'Weighted_score of rank_metrics. Please Use the same value in GSEA. Choose
    from (0, 1, 1.5, 2),default: 1'
  type: double
  inputBinding:
    prefix: --weight
outputs: []
cwlVersion: v1.1
baseCommand:
- gseapy
- replot
