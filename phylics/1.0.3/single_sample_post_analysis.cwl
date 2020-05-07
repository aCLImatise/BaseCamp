class: CommandLineTool
id: single_sample_post_analysis.cwl
inputs:
- id: clust_method
  doc: Clustering method
  type: string
  inputBinding:
    position: 0
- id: distance_metric
  doc: Distance metric
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: Path to the desired output directory where the merged files have to be stored
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- single_sample_post_analysis
