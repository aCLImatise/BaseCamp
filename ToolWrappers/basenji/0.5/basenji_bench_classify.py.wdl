version 1.0

task BasenjiBenchClassifypy {
  input {
    Int? crossvalidation_iterations
    String? dimension_reduction_model
    Int? parallel_threads_passed
    String? save_predictions_iterations
    Int? stat
    String sad_p_file
    String sad_n_file
  }
  command <<<
    basenji_bench_classify_py \
      ~{sad_p_file} \
      ~{sad_n_file} \
      ~{if defined(crossvalidation_iterations) then ("-a " +  '"' + crossvalidation_iterations + '"') else ""} \
      ~{if defined(dimension_reduction_model) then ("-l " +  '"' + dimension_reduction_model + '"') else ""} \
      ~{if defined(parallel_threads_passed) then ("-o " +  '"' + parallel_threads_passed + '"') else ""} \
      ~{if defined(save_predictions_iterations) then ("-r " +  '"' + save_predictions_iterations + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    crossvalidation_iterations: "Cross-validation iterations [Default: 1]"
    dimension_reduction_model: "Dimension reduction model"
    parallel_threads_passed: "Parallel threads passed to scikit-learn n_jobs\\n[Default: 1]"
    save_predictions_iterations: "Save predictions across iterations [Default: False]"
    stat: "HDF5 key stat to consider. [Default: SAD]"
    sad_p_file: ""
    sad_n_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}