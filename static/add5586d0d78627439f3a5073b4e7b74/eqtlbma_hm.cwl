class: CommandLineTool
id: eqtlbma_hm.cwl
inputs:
- id: in_verbose
  doc: level (0/default=1/2/3)
  type: long
  inputBinding:
    prefix: --verbose
- id: in_data
  doc: input data (usually output files from eqtlbma_bf)
  type: boolean
  inputBinding:
    prefix: --data
- id: in_n_sub_grp
  doc: of subgroups
  type: long
  inputBinding:
    prefix: --nsubgrp
- id: in_model
  doc: which model to fit (default=configs/types)
  type: boolean
  inputBinding:
    prefix: --model
- id: in_dim
  doc: dimension of the model (nb of active configs or types)
  type: boolean
  inputBinding:
    prefix: --dim
- id: in_n_grid
  doc: number of grid points
  type: boolean
  inputBinding:
    prefix: --ngrid
- id: in_out
  doc: output file (gzipped)
  type: File
  inputBinding:
    prefix: --out
- id: in_in_it
  doc: "file for initialization\n3 columns: param<tab>value<tab>fixed (TRUE or FALSE)"
  type: boolean
  inputBinding:
    prefix: --init
- id: in_rand
  doc: random initialization
  type: boolean
  inputBinding:
    prefix: --rand
- id: in_seed
  doc: seed used with --rand, otherwise use time
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_thresh
  doc: threshold to stop the EM (default=0.05)
  type: boolean
  inputBinding:
    prefix: --thresh
- id: in_max_it
  doc: "maximum number of iterations (optional)\nuseful if wall-time limit (see also\
    \ --init)"
  type: boolean
  inputBinding:
    prefix: --maxit
- id: in_msl
  doc: "maximum step length for SQUAREM\ndefault=1 (meaning classical EM), around\
    \ 3 is a good option"
  type: boolean
  inputBinding:
    prefix: --msl
- id: in_thread
  doc: number of threads (default=1)
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_configs
  doc: of configurations to keep (e.g. "1|3|1-3")
  type: long
  inputBinding:
    prefix: --configs
- id: in_keep_gen
  doc: "'general' ABFs (useful for BMAlite)"
  type: string
  inputBinding:
    prefix: --keepgen
- id: in_get_ci
  doc: compute the confidence intervals (single thread, thus slow)
  type: boolean
  inputBinding:
    prefix: --getci
- id: in_get_bf
  doc: "compute the Bayes Factors using the estimated weights\ncan take some time,\
    \ otherwise only the estimated weights are reported"
  type: boolean
  inputBinding:
    prefix: --getbf
- id: in_pi_zero
  doc: fixed value for pi0 (pi0 hence won't be updated in the EM)
  type: boolean
  inputBinding:
    prefix: --pi0
- id: in_ci
  doc: file with estimates of hyperparameters to only compute confidence intervals
  type: boolean
  inputBinding:
    prefix: --ci
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file (gzipped)
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- eqtlbma_hm
