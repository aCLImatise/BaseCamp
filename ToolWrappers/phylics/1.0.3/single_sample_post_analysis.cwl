class: CommandLineTool
id: single_sample_post_analysis.cwl
inputs:
- id: in_seed
  doc: "Seed to initialize the pseudo-random generator used to\nperform the permutation\
    \ test."
  type: string
  inputBinding:
    prefix: --seed
- id: in_rec_lust
  doc: "If this option is specified, only the clustering part\nis executed with the\
    \ specified number of clusters,\nunless --reinit option is specified (see below)."
  type: long
  inputBinding:
    prefix: --reclust
- id: in_reinit
  doc: This option has effect only if combined with the
  type: boolean
  inputBinding:
    prefix: --reinit
- id: in_clustering
  doc: It allows to recompute the entire
  type: string
  inputBinding:
    prefix: --clustering
- id: in_verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sample_name
  doc: Sample name.
  type: string
  inputBinding:
    position: 0
- id: in_seg_copy
  doc: Path to cnvs file.
  type: string
  inputBinding:
    position: 1
- id: in_results_dot_txt
  doc: Path to stats file.
  type: string
  inputBinding:
    position: 2
- id: in_clust_method
  doc: Clustering method
  type: string
  inputBinding:
    position: 3
- id: in_distance_metric
  doc: Distance metric
  type: string
  inputBinding:
    position: 4
- id: in_outdir
  doc: "Path to the desired output directory where the merged\nfiles have to be stored"
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- single_sample_post_analysis
