version 1.0

task ModelFit {
  input {
    String? positive_input_file
    String? negative_input_file
    String? output_dir
    String? model_file
    String? n_iter
    String? n_inner_iter_estimator
    String? n_active_learning_iterations
    Int? size_positive
    Int? size_negative
    String? lower_bound_threshold_positive
    String? lower_bound_threshold_negative
    String? upper_bound_threshold_positive
    String? upper_bound_threshold_negative
    Boolean? fit_vectorizer
    Int? max_total_time
    Boolean? two_steps_optimization
    String? scoring
    String? cv
    String? nbits
    String? random_state
    String? n_jobs
    String? n_blocks
    String? block_size
    String? pre_processor_n_jobs
    String? pre_processor_n_blocks
    String? pre_processor_block_size
  }
  command <<<
    model fit \
      ~{if defined(positive_input_file) then ("--positive-input-file " +  '"' + positive_input_file + '"') else ""} \
      ~{if defined(negative_input_file) then ("--negative-input-file " +  '"' + negative_input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(n_iter) then ("--n-iter " +  '"' + n_iter + '"') else ""} \
      ~{if defined(n_inner_iter_estimator) then ("--n-inner-iter-estimator " +  '"' + n_inner_iter_estimator + '"') else ""} \
      ~{if defined(n_active_learning_iterations) then ("--n-active-learning-iterations " +  '"' + n_active_learning_iterations + '"') else ""} \
      ~{if defined(size_positive) then ("--size-positive " +  '"' + size_positive + '"') else ""} \
      ~{if defined(size_negative) then ("--size-negative " +  '"' + size_negative + '"') else ""} \
      ~{if defined(lower_bound_threshold_positive) then ("--lower-bound-threshold-positive " +  '"' + lower_bound_threshold_positive + '"') else ""} \
      ~{if defined(lower_bound_threshold_negative) then ("--lower-bound-threshold-negative " +  '"' + lower_bound_threshold_negative + '"') else ""} \
      ~{if defined(upper_bound_threshold_positive) then ("--upper-bound-threshold-positive " +  '"' + upper_bound_threshold_positive + '"') else ""} \
      ~{if defined(upper_bound_threshold_negative) then ("--upper-bound-threshold-negative " +  '"' + upper_bound_threshold_negative + '"') else ""} \
      ~{true="--fit-vectorizer" false="" fit_vectorizer} \
      ~{if defined(max_total_time) then ("--max-total-time " +  '"' + max_total_time + '"') else ""} \
      ~{true="--two-steps-optimization" false="" two_steps_optimization} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(cv) then ("--cv " +  '"' + cv + '"') else ""} \
      ~{if defined(nbits) then ("--nbits " +  '"' + nbits + '"') else ""} \
      ~{if defined(random_state) then ("--random-state " +  '"' + random_state + '"') else ""} \
      ~{if defined(n_jobs) then ("--n-jobs " +  '"' + n_jobs + '"') else ""} \
      ~{if defined(n_blocks) then ("--n-blocks " +  '"' + n_blocks + '"') else ""} \
      ~{if defined(block_size) then ("-block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(pre_processor_n_jobs) then ("--pre-processor-n-jobs " +  '"' + pre_processor_n_jobs + '"') else ""} \
      ~{if defined(pre_processor_n_blocks) then ("--pre-processor-n-blocks " +  '"' + pre_processor_n_blocks + '"') else ""} \
      ~{if defined(pre_processor_block_size) then ("--pre-processor-block-size " +  '"' + pre_processor_block_size + '"') else ""}
  >>>
  parameter_meta {
    positive_input_file: "Path tofile containing input for the positive class. (default: None)"
    negative_input_file: "Path to file containing input for the negative class. (default: None)"
    output_dir: "Path to output directory. (default: out)"
    model_file: "Model file name. Note: it will be located in the output directory. (default: model)"
    n_iter: "Number of randomly generated hyper parameter configurations tried during the discriminative model optimization. A value of 1 implies using the estimator default values. (default: 20)"
    n_inner_iter_estimator: "Number of randomly generated hyper parameter configurations tried for the estimator for each parameter configuration of the pre-processor and vectorizer during optimization. (default: 5)"
    n_active_learning_iterations: "Number of iterations in the active learning cycle. A value of 0 means to avoid active learning. (default: 0)"
    size_positive: "Number of positive instances that have to be sampled in the active learning cycle. A value of -1 means to use all instances, i.e. not to use active learning for the positive instances. (default: -1)"
    size_negative: "Number of negative instances that have to be sampled in the active learning cycle. A value of -1 means to use all instances, i.e. not to use active learning for the negative instances. (default: -1)"
    lower_bound_threshold_positive: "Value of the score threshold to determine when to accept positive instances: positive instances with a score higher than the specified value will be accepted as candidates. (default: -1)"
    lower_bound_threshold_negative: "Value of the score threshold to determine when to accept negative instances: negative instances with a score higher than the specified value will be accepted as candidates. (default: -1)"
    upper_bound_threshold_positive: "Value of the score threshold to determine when to accept positive instances: positive instances with a score lower than the specified value will be accepted as candidates. (default: 1)"
    upper_bound_threshold_negative: "Value of the score threshold to determine when to accept negative instances: negative instances with a score lower than the specified value will be accepted as candidates. (default: 1)"
    fit_vectorizer: "If set, activate the fitting procedure for the vectorizer on positive instances only. (default: False)"
    max_total_time: "Maximal number of seconds for the duration of the optimization phase. After that the procedure is forcefully stopped. A value of -1 means no time limit. (default: -1)"
    two_steps_optimization: "If set, activate a refinement procedure anfter n_iter/2 steps that samples only among the parameters that have previously improved the results. (default: False)"
    scoring: "The scoring strategy for evaluating in cross validation the quality of a hyper parameter combination. (default: roc_auc)"
    cv: "Cross validation size. (default: 10)"
    nbits: "Number of bits used to express the graph kernel features. A value of 20 corresponds to 2**20=1 million possible features. (default: 20)"
    random_state: "Random seed. (default: 1)"
    n_jobs: "Number of cores to use in multiprocessing. (default: 2)"
    n_blocks: "Number of blocks in which to divide the input for the multiprocessing elaboration. (default: 8)"
    block_size: "Number of instances per block for the multiprocessing elaboration. (default: None)"
    pre_processor_n_jobs: "Number of cores to use in multiprocessing. (default: 4)"
    pre_processor_n_blocks: "Number of blocks in which to divide the input for the multiprocessing elaboration. (default: 10)"
    pre_processor_block_size: "Number of instances per block for the multiprocessing elaboration. (default: None)"
  }
}