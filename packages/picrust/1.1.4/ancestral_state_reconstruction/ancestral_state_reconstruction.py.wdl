version 1.0

task AncestralStateReconstructionpy {
  input {
    Boolean? verbose
    String? asr_method
    String? output_fp
    Int? output_ci_fp
    Boolean? parallel
    String? parallel_method
    Int? num_jobs
    Boolean? debug
    String? input_tree_fp
    String? input_trait_table_fp
  }
  command <<<
    ancestral_state_reconstruction_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(asr_method) then ("--asr_method " +  '"' + asr_method + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(output_ci_fp) then ("--output_ci_fp " +  '"' + output_ci_fp + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(parallel_method) then ("--parallel_method " +  '"' + parallel_method + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_tree_fp) then ("--input_tree_fp " +  '"' + input_tree_fp + '"') else ""} \
      ~{if defined(input_trait_table_fp) then ("--input_trait_table_fp " +  '"' + input_trait_table_fp + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    asr_method: "Method for ancestral state reconstruction. Valid\\nchoices are: ace_ml, ace_reml, ace_pic, wagner\\n[default: ace_pic]"
    output_fp: "output trait table [default:asr_counts.tab]"
    output_ci_fp: "output table containing 95% confidence intervals,\\nloglik, and brownian motion parameters for each asr\\nprediction [default:asr_ci.tab]"
    parallel: "allow parallelization of asr"
    parallel_method: "Method for parallelization. Valid choices are: sge,\\ntorque, multithreaded [default: sge]"
    num_jobs: "Number of jobs to be submitted (if --parallel).\\n[default: 100]"
    debug: "To aid with debugging; get the command that the app\\ncontroller is going to run"
    input_tree_fp: "the tree to use for ASR [REQUIRED]"
    input_trait_table_fp: "the trait table to use for ASR [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}