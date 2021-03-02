class: CommandLineTool
id: gseapy_prerank.cwl
inputs:
- id: in_rnk
  doc: Ranking metric file in .rnk format. Same with GSEA.
  type: File?
  inputBinding:
    prefix: --rnk
- id: in_gmt
  doc: Gene set database in GMT format. Same with GSEA.
  type: string?
  inputBinding:
    prefix: --gmt
- id: in_neg__label
  doc: "neg, --label pos neg\nThe phenotype label argument need two parameters to\n\
    define. Default: ('Pos','Neg')"
  type: string?
  inputBinding:
    prefix: -l
- id: in_outdir
  doc: "The GSEApy output directory. Default: the current\nworking directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_format
  doc: "File extensions supported by Matplotlib active\nbackend, choose from {'pdf',\
    \ 'png', 'jpeg','ps',\n'eps','svg'}. Default: 'pdf'."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_fs
  doc: "height, --figsize width height\nThe figsize keyword argument need two parameters\
    \ to\ndefine. Default: (6.5, 6)"
  type: double?
  inputBinding:
    prefix: --fs
- id: in_graph
  doc: 'Numbers of top graphs produced. Default: 20'
  type: long?
  inputBinding:
    prefix: --graph
- id: in_no_plot
  doc: "Speed up computing by suppressing the plot output.This\nis useful only if\
    \ data are interested. Default: False."
  type: boolean?
  inputBinding:
    prefix: --no-plot
- id: in_verbose
  doc: Increase output verbosity, print out progress of your
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_per_mu_num
  doc: "Number of random permutations. For calculating\nesnulls. Default: 1000"
  type: long?
  inputBinding:
    prefix: --permu-num
- id: in_min_size
  doc: "Min size of input genes presented in Gene Sets.\nDefault: 15"
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_max_size
  doc: "Max size of input genes presented in Gene Sets.\nDefault: 500"
  type: long?
  inputBinding:
    prefix: --max-size
- id: in_weight
  doc: "Weighted_score of rank_metrics. For weighting input\ngenes. Choose from {0,\
    \ 1, 1.5, 2}. Default: 1"
  type: double?
  inputBinding:
    prefix: --weight
- id: in_ascending
  doc: "Rank metric sorting order. If the -a flag was chosen,\nthen ascending equals\
    \ to True. Default: False."
  type: boolean?
  inputBinding:
    prefix: --ascending
- id: in_seed
  doc: 'Number of random seed. Default: None'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: "Number of Processes you are going to use. Default: 1\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_job
  doc: 'GSEA advanced arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "The GSEApy output directory. Default: the current\nworking directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- gseapy
- prerank
