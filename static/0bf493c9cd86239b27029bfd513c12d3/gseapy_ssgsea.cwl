class: CommandLineTool
id: gseapy_ssgsea.cwl
inputs:
- id: data
  doc: Input gene expression dataset file in txt format. Same with GSEA.
  type: string
  inputBinding:
    prefix: --data
- id: gmt
  doc: Gene set database in GMT format. Same with GSEA.
  type: string
  inputBinding:
    prefix: --gmt
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
- id: sample_norm
  doc: "Sample normalization method. Choose from {'rank', 'log', 'log_rank','custom'}.\
    \ Default: rank"
  type: string
  inputBinding:
    prefix: --sample-norm
- id: no_scale
  doc: If the flag was set, don't normalize the enrichment scores by number of genes.
  type: boolean
  inputBinding:
    prefix: --no-scale
- id: per_mu_num
  doc: 'Number of random permutations. For calculating esnulls. Default: 0'
  type: string
  inputBinding:
    prefix: --permu-num
- id: min_size
  doc: 'Min size of input genes presented in Gene Sets. Default: 15'
  type: long
  inputBinding:
    prefix: --min-size
- id: max_size
  doc: 'Max size of input genes presented in Gene Sets. Default: 2000'
  type: long
  inputBinding:
    prefix: --max-size
- id: weight
  doc: 'Weighted_score of rank_metrics. For weighting input genes. Default: 0.25'
  type: string
  inputBinding:
    prefix: --weight
- id: ascending
  doc: 'Rank metric sorting order. If the -a flag was chosen, then ascending equals
    to True. Default: False.'
  type: boolean
  inputBinding:
    prefix: --ascending
- id: s
  doc: ', --seed           Number of random seed. Default: None'
  type: boolean
  inputBinding:
    prefix: -s
- id: threads
  doc: 'Number of Processes you are going to use. Default: 1'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- gseapy
- ssgsea
