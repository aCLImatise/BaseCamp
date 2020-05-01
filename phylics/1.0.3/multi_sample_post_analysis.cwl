#!/usr/bin/env cwl-runner

baseCommand:
- multi_sample_post_analysis
class: CommandLineTool
cwlVersion: v1.0
id: multi_sample_post_analysis
inputs:
- doc: Sample name and cnvs filepath separated by ":". At least two samples must be
    provided.
  id: seg_copy
  inputBinding:
    position: 0
  type: string
- doc: Clustering method.
  id: clust_method
  inputBinding:
    position: 1
  type: string
- doc: Distance metric.
  id: distance_metric
  inputBinding:
    position: 2
  type: string
- doc: Path to the output directory (must exist).
  id: out_dir
  inputBinding:
    position: 3
  type: string
- doc: Number of permutations to execute the permutation test for sample coesion score.
  id: n_permutations
  inputBinding:
    prefix: --n_permutations
  type: string
- doc: Seed to initialize the pseudo-random generator used to perform the permutation
    test.
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: If this option is specified, only the clustering part is executed with the
    specified number of clusters, unless --reinit option is specified (see below).
  id: rec_lust
  inputBinding:
    prefix: --reclust
  type: string
- doc: This option has effect only if combined with the --clustering option. It allows
    to recompute the entire analysis and then recluster with the specified number
    of clusters.
  id: reinit
  inputBinding:
    prefix: --reinit
  type: boolean
- doc: Verbose execution.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Number of parallel jobs to speed up pvalue computation
  id: n_jobs
  inputBinding:
    prefix: --n_jobs
  type: string
