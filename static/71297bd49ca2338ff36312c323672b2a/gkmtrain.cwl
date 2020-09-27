class: CommandLineTool
id: gkmtrain.cwl
inputs:
- id: in_set_function_default
  doc: "<0 ~ 5>   set kernel function (default: 4 wgkm)\nNOTE: RBF kernels (3 and\
    \ 5) work best with -c 10 -g 2\n0 -- gapped-kmer\n1 -- estimated l-mer with full\
    \ filter\n2 -- estimated l-mer with truncated filter (gkm)\n3 -- gkm + RBF (gkmrbf)\n\
    4 -- gkm + center weighted (wgkm)\n[weight = max(M, floor(M*exp(-ln(2)*D/H)+1))]\n\
    5 -- gkm + center weighted + RBF (wgkmrbf)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_set_word_default
  doc: 'set word length, 3<=l<=12 (default: 11)'
  type: long
  inputBinding:
    prefix: -l
- id: in_set_number_informative
  doc: 'set number of informative column, k<=l (default: 7)'
  type: long
  inputBinding:
    prefix: -k
- id: in_set_maximum_number
  doc: 'set maximum number of mismatches to consider, d<=4 (default: 3)'
  type: long
  inputBinding:
    prefix: -d
- id: in_set_gamma_rbf
  doc: 'set gamma for RBF kernel. -t 3 or 5 only (default: 1.0)'
  type: double
  inputBinding:
    prefix: -g
- id: in_set_initial_value
  doc: "set the initial value (M) of the exponential decay function\nfor wgkm-kernels.\
    \ max=255, -t 4 or 5 only (default: 50)"
  type: long
  inputBinding:
    prefix: -M
- id: in_set_halflife_h
  doc: "set the half-life parameter (H) that is the distance (D) required\nto fall\
    \ to half of its initial value in the exponential decay\nfunction for wgkm-kernels.\
    \ -t 4 or 5 only (default: 50)"
  type: double
  inputBinding:
    prefix: -H
- id: in_set_regularization_default
  doc: 'set the regularization parameter SVM-C (default: 1.0)'
  type: double
  inputBinding:
    prefix: -c
- id: in_set_parameter_default
  doc: 'set the precision parameter epsilon (default: 0.001)'
  type: double
  inputBinding:
    prefix: -e
- id: in_set_parameter_svmc
  doc: 'set the parameter SVM-C to w*C for the positive set (default: 1.0)'
  type: double
  inputBinding:
    prefix: -w
- id: in_set_cache_size
  doc: "set cache memory size in MB (default: 100.0)\nNOTE: Large cache signifcantly\
    \ reduces runtime. >4Gb is recommended"
  type: double
  inputBinding:
    prefix: -m
- id: in_set_use_heuristics
  doc: if set, use the shrinking heuristics
  type: boolean
  inputBinding:
    prefix: -s
- id: in_set_nfold_default
  doc: 'set N-fold cross validation mode (default: no cross validation)'
  type: long
  inputBinding:
    prefix: -x
- id: in_run_ith_validation
  doc: 'run i-th cross validation only 1<=i<=ncv (default: all)'
  type: long
  inputBinding:
    prefix: -i
- id: in_set_random_seed
  doc: 'set random seed for shuffling in cross validation mode (default: 1)'
  type: long
  inputBinding:
    prefix: -r
- id: in_set_level_msgs
  doc: "<0 ~ 4>   set the level of verbosity (default: 2)\n0 -- error msgs only (ERROR)\n\
    1 -- warning msgs (WARN)\n2 -- progress msgs at coarse-grained level (INFO)\n\
    3 -- progress msgs at fine-grained level (DEBUG)\n4 -- progress msgs at finer-grained\
    \ level (TRACE)"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_set_number_default
  doc: "set the number of threads for parallel calculation, 1, 4, or 16\n(default:\
    \ 1)\n"
  type: long
  inputBinding:
    prefix: -T
- id: in_pos_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_neg_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gkmtrain
