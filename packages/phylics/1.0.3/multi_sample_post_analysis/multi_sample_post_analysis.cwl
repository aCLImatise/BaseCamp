class: CommandLineTool
id: multi_sample_post_analysis.cwl
inputs:
- id: in_n_permutations
  doc: "Number of permutations to execute the permutation test\nfor sample coesion\
    \ score."
  type: long
  inputBinding:
    prefix: --n_permutations
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
- id: in_n_jobs
  doc: Number of parallel jobs to speed up pvalue computation
  type: long
  inputBinding:
    prefix: --n_jobs
- id: in_seg_copy
  doc: "Sample name and cnvs filepath separated by \":\". At\nleast two samples must\
    \ be provided."
  type: string
  inputBinding:
    position: 0
- id: in_clust_method
  doc: Clustering method.
  type: string
  inputBinding:
    position: 1
- id: in_distance_metric
  doc: Distance metric.
  type: string
  inputBinding:
    position: 2
- id: in_out_dir
  doc: Path to the output directory (must exist).
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- multi_sample_post_analysis
