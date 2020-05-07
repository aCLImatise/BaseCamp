class: CommandLineTool
id: eqtlbma_hm.cwl
inputs:
- id: verbose
  doc: level (0/default=1/2/3)
  type: string
  inputBinding:
    prefix: --verbose
- id: data
  doc: input data (usually output files from eqtlbma_bf)
  type: boolean
  inputBinding:
    prefix: --data
- id: n_sub_grp
  doc: of subgroups
  type: string
  inputBinding:
    prefix: --nsubgrp
- id: model
  doc: which model to fit (default=configs/types)
  type: boolean
  inputBinding:
    prefix: --model
- id: dim
  doc: dimension of the model (nb of active configs or types)
  type: boolean
  inputBinding:
    prefix: --dim
- id: n_grid
  doc: number of grid points
  type: boolean
  inputBinding:
    prefix: --ngrid
- id: out
  doc: output file (gzipped)
  type: boolean
  inputBinding:
    prefix: --out
- id: in_it
  doc: 'file for initialization 3 columns: param<tab>value<tab>fixed (TRUE or FALSE)'
  type: boolean
  inputBinding:
    prefix: --init
- id: rand
  doc: random initialization
  type: boolean
  inputBinding:
    prefix: --rand
- id: seed
  doc: seed used with --rand, otherwise use time
  type: boolean
  inputBinding:
    prefix: --seed
- id: thresh
  doc: threshold to stop the EM (default=0.05)
  type: boolean
  inputBinding:
    prefix: --thresh
- id: max_it
  doc: maximum number of iterations (optional) useful if wall-time limit (see also
    --init)
  type: boolean
  inputBinding:
    prefix: --maxit
- id: msl
  doc: maximum step length for SQUAREM default=1 (meaning classical EM), around 3
    is a good option
  type: boolean
  inputBinding:
    prefix: --msl
- id: thread
  doc: number of threads (default=1)
  type: boolean
  inputBinding:
    prefix: --thread
- id: configs
  doc: of configurations to keep (e.g. "1|3|1-3")
  type: string
  inputBinding:
    prefix: --configs
- id: keep_gen
  doc: "'general' ABFs (useful for BMAlite)"
  type: string
  inputBinding:
    prefix: --keepgen
- id: get_ci
  doc: compute the confidence intervals (single thread, thus slow)
  type: boolean
  inputBinding:
    prefix: --getci
- id: get_bf
  doc: compute the Bayes Factors using the estimated weights can take some time, otherwise
    only the estimated weights are reported
  type: boolean
  inputBinding:
    prefix: --getbf
- id: pi0
  doc: fixed value for pi0 (pi0 hence won't be updated in the EM)
  type: boolean
  inputBinding:
    prefix: --pi0
- id: ci
  doc: file with estimates of hyperparameters to only compute confidence intervals
  type: boolean
  inputBinding:
    prefix: --ci
outputs: []
cwlVersion: v1.1
baseCommand:
- eqtlbma_hm
