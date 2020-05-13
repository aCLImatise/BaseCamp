class: CommandLineTool
id: multi_sample_post_analysis.cwl
inputs:
- id: seg_copy
  doc: Sample name and cnvs filepath separated by ":". At least two samples must be
    provided.
  type: string
  inputBinding:
    position: 0
- id: clust_method
  doc: Clustering method.
  type: string
  inputBinding:
    position: 1
- id: distance_metric
  doc: Distance metric.
  type: string
  inputBinding:
    position: 2
- id: out_dir
  doc: Path to the output directory (must exist).
  type: string
  inputBinding:
    position: 3
- id: n_permutations
  doc: Number of permutations to execute the permutation test for sample coesion score.
  type: string
  inputBinding:
    prefix: --n_permutations
- id: seed
  doc: Seed to initialize the pseudo-random generator used to perform the permutation
    test.
  type: string
  inputBinding:
    prefix: --seed
- id: rec_lust
  doc: If this option is specified, only the clustering part is executed with the
    specified number of clusters, unless --reinit option is specified (see below).
  type: string
  inputBinding:
    prefix: --reclust
- id: reinit
  doc: This option has effect only if combined with the --clustering option. It allows
    to recompute the entire analysis and then recluster with the specified number
    of clusters.
  type: boolean
  inputBinding:
    prefix: --reinit
- id: verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: n_jobs
  doc: Number of parallel jobs to speed up pvalue computation
  type: string
  inputBinding:
    prefix: --n_jobs
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_sample_post_analysis
