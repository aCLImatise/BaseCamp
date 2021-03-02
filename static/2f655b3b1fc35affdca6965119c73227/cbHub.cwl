class: CommandLineTool
id: cbHub.cwl
inputs:
- id: in_in_it
  doc: write a sample hub.conf to the current directory
  type: boolean?
  inputBinding:
    prefix: --init
- id: in_in_conf
  doc: "a hub.conf input file to read all options from.\n(settings can also be specified\
    \ via cellbrowser.conf\nin the current directory.) default hub.conf"
  type: File?
  inputBinding:
    prefix: --inConf
- id: in_meta_fname
  doc: a csv or tsv matrix, one row per cell
  type: string?
  inputBinding:
    prefix: --metaFname
- id: in_expr_matrix
  doc: "exprMatrix is a tsv or csv expression matrix, one line\nper cell"
  type: string?
  inputBinding:
    prefix: --exprMatrix
- id: in_cluster_field
  doc: field in expr matrix that contains the cluster name
  type: string?
  inputBinding:
    prefix: --clusterField
- id: in_outdir
  doc: the output directory for the hub, default is none
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_stat
  doc: "how to summarize data values of a cluster, one of:\nmedian, mean, percentile,\
    \ nonzero. default is median"
  type: string?
  inputBinding:
    prefix: --stat
- id: in_perc
  doc: "if stat is 'percentile', which percentile to use. a\nnumber 0-100. default\
    \ is 90"
  type: long?
  inputBinding:
    prefix: --perc
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_skip_bar_chart
  doc: do not create the bar chart graph
  type: boolean?
  inputBinding:
    prefix: --skipBarchart
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: the output directory for the hub, default is none
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0
cwlVersion: v1.1
baseCommand:
- cbHub
