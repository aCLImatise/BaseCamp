class: CommandLineTool
id: svm_train.cwl
inputs:
- id: in_set_type_svm_
  doc: ": set type of SVM (default 0)\n0 -- C-SVC              (multi-class classification)\n\
    1 -- nu-SVC             (multi-class classification)\n2 -- one-class SVM\n3 --\
    \ epsilon-SVR        (regression)\n4 -- nu-SVR             (regression)"
  type: long?
  inputBinding:
    prefix: -s
- id: in_set_type_kernel_
  doc: ": set type of kernel function (default 2)\n0 -- linear: u'*v\n1 -- polynomial:\
    \ (gamma*u'*v + coef0)^degree\n2 -- radial basis function: exp(-gamma*|u-v|^2)\n\
    3 -- sigmoid: tanh(gamma*u'*v + coef0)\n4 -- precomputed kernel (kernel values\
    \ in training_set_file)"
  type: long?
  inputBinding:
    prefix: -t
- id: in_set_degree_kernel
  doc: ': set degree in kernel function (default 3)'
  type: long?
  inputBinding:
    prefix: -d
- id: in_set_gamma_kernel
  doc: ': set gamma in kernel function (default 1/num_features)'
  type: long?
  inputBinding:
    prefix: -g
- id: in_set_coef_kernel
  doc: ': set coef0 in kernel function (default 0)'
  type: long?
  inputBinding:
    prefix: -r
- id: in_set_c_csvc
  doc: ': set the parameter C of C-SVC, epsilon-SVR, and nu-SVR (default 1)'
  type: long?
  inputBinding:
    prefix: -c
- id: in_set_parameter_nusvc
  doc: ': set the parameter nu of nu-SVC, one-class SVM, and nu-SVR (default 0.5)'
  type: double?
  inputBinding:
    prefix: -n
- id: in_set_epsilon_loss
  doc: ': set the epsilon in loss function of epsilon-SVR (default 0.1)'
  type: double?
  inputBinding:
    prefix: -p
- id: in_set_memory_size
  doc: ': set cache memory size in MB (default 100)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_set_tolerance_termination
  doc: ': set tolerance of termination criterion (default 0.001)'
  type: double?
  inputBinding:
    prefix: -e
- id: in_use_shrinking_heuristics
  doc: ': whether to use the shrinking heuristics, 0 or 1 (default 1)'
  type: long?
  inputBinding:
    prefix: -h
- id: in_train_svc_model
  doc: ': whether to train a SVC or SVR model for probability estimates, 0 or 1 (default
    0)'
  type: long?
  inputBinding:
    prefix: -b
- id: in_wi
  doc: ': set the parameter C of class i to weight*C, for C-SVC (default 1)'
  type: long?
  inputBinding:
    prefix: -wi
- id: in_cross_validation_mode
  doc: ': n-fold cross validation mode'
  type: string?
  inputBinding:
    prefix: -v
- id: in_quiet_mode_outputs
  doc: ': quiet mode (no outputs)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__log_file
  doc: ': log file'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_training_set_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svm-train
