class: CommandLineTool
id: model_fit.cwl
inputs:
- id: positive_input_file
  doc: 'Path tofile containing input for the positive class. (default: None)'
  type: string
  inputBinding:
    prefix: --positive-input-file
- id: negative_input_file
  doc: 'Path to file containing input for the negative class. (default: None)'
  type: string
  inputBinding:
    prefix: --negative-input-file
- id: output_dir
  doc: 'Path to output directory. (default: out)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: model_file
  doc: 'Model file name. Note: it will be located in the output directory. (default:
    model)'
  type: string
  inputBinding:
    prefix: --model-file
- id: n_iter
  doc: 'Number of randomly generated hyper parameter configurations tried during the
    discriminative model optimization. A value of 1 implies using the estimator default
    values. (default: 20)'
  type: string
  inputBinding:
    prefix: --n-iter
- id: n_inner_iter_estimator
  doc: 'Number of randomly generated hyper parameter configurations tried for the
    estimator for each parameter configuration of the pre-processor and vectorizer
    during optimization. (default: 5)'
  type: string
  inputBinding:
    prefix: --n-inner-iter-estimator
- id: n_active_learning_iterations
  doc: 'Number of iterations in the active learning cycle. A value of 0 means to avoid
    active learning. (default: 0)'
  type: string
  inputBinding:
    prefix: --n-active-learning-iterations
- id: size_positive
  doc: 'Number of positive instances that have to be sampled in the active learning
    cycle. A value of -1 means to use all instances, i.e. not to use active learning
    for the positive instances. (default: -1)'
  type: long
  inputBinding:
    prefix: --size-positive
- id: size_negative
  doc: 'Number of negative instances that have to be sampled in the active learning
    cycle. A value of -1 means to use all instances, i.e. not to use active learning
    for the negative instances. (default: -1)'
  type: long
  inputBinding:
    prefix: --size-negative
- id: lower_bound_threshold_positive
  doc: 'Value of the score threshold to determine when to accept positive instances:
    positive instances with a score higher than the specified value will be accepted
    as candidates. (default: -1)'
  type: string
  inputBinding:
    prefix: --lower-bound-threshold-positive
- id: lower_bound_threshold_negative
  doc: 'Value of the score threshold to determine when to accept negative instances:
    negative instances with a score higher than the specified value will be accepted
    as candidates. (default: -1)'
  type: string
  inputBinding:
    prefix: --lower-bound-threshold-negative
- id: upper_bound_threshold_positive
  doc: 'Value of the score threshold to determine when to accept positive instances:
    positive instances with a score lower than the specified value will be accepted
    as candidates. (default: 1)'
  type: string
  inputBinding:
    prefix: --upper-bound-threshold-positive
- id: upper_bound_threshold_negative
  doc: 'Value of the score threshold to determine when to accept negative instances:
    negative instances with a score lower than the specified value will be accepted
    as candidates. (default: 1)'
  type: string
  inputBinding:
    prefix: --upper-bound-threshold-negative
- id: fit_vectorizer
  doc: 'If set, activate the fitting procedure for the vectorizer on positive instances
    only. (default: False)'
  type: boolean
  inputBinding:
    prefix: --fit-vectorizer
- id: max_total_time
  doc: 'Maximal number of seconds for the duration of the optimization phase. After
    that the procedure is forcefully stopped. A value of -1 means no time limit. (default:
    -1)'
  type: long
  inputBinding:
    prefix: --max-total-time
- id: two_steps_optimization
  doc: 'If set, activate a refinement procedure anfter n_iter/2 steps that samples
    only among the parameters that have previously improved the results. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --two-steps-optimization
- id: scoring
  doc: 'The scoring strategy for evaluating in cross validation the quality of a hyper
    parameter combination. (default: roc_auc)'
  type: string
  inputBinding:
    prefix: --scoring
- id: cv
  doc: 'Cross validation size. (default: 10)'
  type: string
  inputBinding:
    prefix: --cv
- id: nbits
  doc: 'Number of bits used to express the graph kernel features. A value of 20 corresponds
    to 2**20=1 million possible features. (default: 20)'
  type: string
  inputBinding:
    prefix: --nbits
- id: random_state
  doc: 'Random seed. (default: 1)'
  type: string
  inputBinding:
    prefix: --random-state
- id: n_jobs
  doc: 'Number of cores to use in multiprocessing. (default: 2)'
  type: string
  inputBinding:
    prefix: --n-jobs
- id: n_blocks
  doc: 'Number of blocks in which to divide the input for the multiprocessing elaboration.
    (default: 8)'
  type: string
  inputBinding:
    prefix: --n-blocks
- id: block_size
  doc: 'Number of instances per block for the multiprocessing elaboration. (default:
    None)'
  type: string
  inputBinding:
    prefix: -block-size
- id: pre_processor_n_jobs
  doc: 'Number of cores to use in multiprocessing. (default: 4)'
  type: string
  inputBinding:
    prefix: --pre-processor-n-jobs
- id: pre_processor_n_blocks
  doc: 'Number of blocks in which to divide the input for the multiprocessing elaboration.
    (default: 10)'
  type: string
  inputBinding:
    prefix: --pre-processor-n-blocks
- id: pre_processor_block_size
  doc: 'Number of instances per block for the multiprocessing elaboration. (default:
    None)'
  type: string
  inputBinding:
    prefix: --pre-processor-block-size
outputs: []
cwlVersion: v1.1
baseCommand:
- model
- fit
