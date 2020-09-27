class: CommandLineTool
id: treemix.cwl
inputs:
- id: in_this_help
  doc: this help
  type: string
  inputBinding:
    prefix: -h
- id: in__input_file
  doc: '[file name] input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_modelcovgz
  doc: '[stem] output stem (will be [stem].treeout.gz, [stem].cov.gz, [stem].modelcov.gz)'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_number_snps_block
  doc: '[int] number of SNPs per block for estimation of covariance matrix (1)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_global
  doc: a round of global rearrangements after adding all populations
  type: string
  inputBinding:
    prefix: -global
- id: in_tf
  doc: '[file name] Read the tree topology from a file, rather than estimating it'
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_number_migration_add
  doc: '[int] number of migration edges to add (0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_root
  doc: '[string] comma-delimited list of populations to set on one side of the root
    (for migration)'
  type: boolean
  inputBinding:
    prefix: -root
- id: in_read_graph_previous
  doc: '[vertices file name] [edges file name] read the graph from a previous TreeMix
    run'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_se
  doc: standard errors of migration weights (computationally expensive)
  type: string
  inputBinding:
    prefix: -se
- id: in_micro
  doc: data
  type: string
  inputBinding:
    prefix: -micro
- id: in_bootstrap
  doc: a single bootstrap replicate
  type: string
  inputBinding:
    prefix: -bootstrap
- id: in_cor_mig
  doc: '[file] list of known migration events to include (also use -climb)'
  type: boolean
  inputBinding:
    prefix: -cor_mig
- id: in_noss
  doc: off sample size correction
  type: long
  inputBinding:
    prefix: -noss
- id: in_seed
  doc: '[int] Set the seed for random number generation'
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_n_warn
  doc: '[int] Display first N warnings'
  type: boolean
  inputBinding:
    prefix: -n_warn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treemix
