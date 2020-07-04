class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gkmtrain.cwl
inputs:
- id: set_function_default
  doc: '<0 ~ 5>   set kernel function (default: 4 wgkm) NOTE: RBF kernels (3 and 5)
    work best with -c 10 -g 2 0 -- gapped-kmer 1 -- estimated l-mer with full filter
    2 -- estimated l-mer with truncated filter (gkm) 3 -- gkm + RBF (gkmrbf) 4 --
    gkm + center weighted (wgkm) [weight = max(M, floor(M*exp(-ln(2)*D/H)+1))] 5 --
    gkm + center weighted + RBF (wgkmrbf)'
  type: boolean
  inputBinding:
    prefix: -t
- id: set_word_length
  doc: 'set word length, 3<=l<=12 (default: 11)'
  type: long
  inputBinding:
    prefix: -l
- id: set_number_informative
  doc: 'set number of informative column, k<=l (default: 7)'
  type: long
  inputBinding:
    prefix: -k
- id: set_maximum_number
  doc: 'set maximum number of mismatches to consider, d<=4 (default: 3)'
  type: long
  inputBinding:
    prefix: -d
- id: set_gamma_rbf
  doc: 'set gamma for RBF kernel. -t 3 or 5 only (default: 1.0)'
  type: double
  inputBinding:
    prefix: -g
- id: set_initial_value
  doc: 'set the initial value (M) of the exponential decay function for wgkm-kernels.
    max=255, -t 4 or 5 only (default: 50)'
  type: long
  inputBinding:
    prefix: -M
- id: set_halflife_h
  doc: 'set the half-life parameter (H) that is the distance (D) required to fall
    to half of its initial value in the exponential decay function for wgkm-kernels.
    -t 4 or 5 only (default: 50)'
  type: double
  inputBinding:
    prefix: -H
- id: set_regularization_default
  doc: 'set the regularization parameter SVM-C (default: 1.0)'
  type: double
  inputBinding:
    prefix: -c
- id: set_parameter_default
  doc: 'set the precision parameter epsilon (default: 0.001)'
  type: double
  inputBinding:
    prefix: -e
- id: set_parameter_svmc
  doc: 'set the parameter SVM-C to w*C for the positive set (default: 1.0)'
  type: double
  inputBinding:
    prefix: -w
- id: set_cache_size
  doc: 'set cache memory size in MB (default: 100.0) NOTE: Large cache signifcantly
    reduces runtime. >4Gb is recommended'
  type: double
  inputBinding:
    prefix: -m
- id: set_use_heuristics
  doc: if set, use the shrinking heuristics
  type: boolean
  inputBinding:
    prefix: -s
- id: set_nfold_default
  doc: 'set N-fold cross validation mode (default: no cross validation)'
  type: long
  inputBinding:
    prefix: -x
- id: run_ith_validation
  doc: 'run i-th cross validation only 1<=i<=ncv (default: all)'
  type: long
  inputBinding:
    prefix: -i
- id: set_random_seed
  doc: 'set random seed for shuffling in cross validation mode (default: 1)'
  type: long
  inputBinding:
    prefix: -r
- id: set_level_verbosity
  doc: '<0 ~ 4>   set the level of verbosity (default: 2) 0 -- error msgs only (ERROR)
    1 -- warning msgs (WARN) 2 -- progress msgs at coarse-grained level (INFO) 3 --
    progress msgs at fine-grained level (DEBUG) 4 -- progress msgs at finer-grained
    level (TRACE)'
  type: boolean
  inputBinding:
    prefix: -v
- id: pos_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: neg_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gkmtrain
