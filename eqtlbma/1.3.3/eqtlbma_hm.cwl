#!/usr/bin/env cwl-runner

baseCommand:
- eqtlbma_hm
class: CommandLineTool
cwlVersion: v1.0
id: eqtlbma_hm
inputs:
- doc: level (0/default=1/2/3)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: input data (usually output files from eqtlbma_bf)
  id: data
  inputBinding:
    prefix: --data
  type: boolean
- doc: of subgroups
  id: n_sub_grp
  inputBinding:
    prefix: --nsubgrp
  type: string
- doc: which model to fit (default=configs/types)
  id: model
  inputBinding:
    prefix: --model
  type: boolean
- doc: dimension of the model (nb of active configs or types)
  id: dim
  inputBinding:
    prefix: --dim
  type: boolean
- doc: number of grid points
  id: n_grid
  inputBinding:
    prefix: --ngrid
  type: boolean
- doc: output file (gzipped)
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: 'file for initialization 3 columns: param<tab>value<tab>fixed (TRUE or FALSE)'
  id: in_it
  inputBinding:
    prefix: --init
  type: boolean
- doc: random initialization
  id: rand
  inputBinding:
    prefix: --rand
  type: boolean
- doc: seed used with --rand, otherwise use time
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: threshold to stop the EM (default=0.05)
  id: thresh
  inputBinding:
    prefix: --thresh
  type: boolean
- doc: maximum number of iterations (optional) useful if wall-time limit (see also
    --init)
  id: max_it
  inputBinding:
    prefix: --maxit
  type: boolean
- doc: maximum step length for SQUAREM default=1 (meaning classical EM), around 3
    is a good option
  id: msl
  inputBinding:
    prefix: --msl
  type: boolean
- doc: number of threads (default=1)
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
- doc: of configurations to keep (e.g. "1|3|1-3")
  id: configs
  inputBinding:
    prefix: --configs
  type: string
- doc: "'general' ABFs (useful for BMAlite)"
  id: keep_gen
  inputBinding:
    prefix: --keepgen
  type: string
- doc: compute the confidence intervals (single thread, thus slow)
  id: get_ci
  inputBinding:
    prefix: --getci
  type: boolean
- doc: compute the Bayes Factors using the estimated weights can take some time, otherwise
    only the estimated weights are reported
  id: get_bf
  inputBinding:
    prefix: --getbf
  type: boolean
- doc: fixed value for pi0 (pi0 hence won't be updated in the EM)
  id: pi0
  inputBinding:
    prefix: --pi0
  type: boolean
- doc: file with estimates of hyperparameters to only compute confidence intervals
  id: ci
  inputBinding:
    prefix: --ci
  type: boolean
