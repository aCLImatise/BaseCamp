version 1.0

task HMMCtoCMC {
  input {
    File? hmm_compare_result_file
    File? cm_models_file
    File? hmm_models_file
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    HMMCtoCMC \
      ~{if defined(hmm_compare_result_file) then ("--hmmcompareresultfile " +  '"' + hmm_compare_result_file + '"') else ""} \
      ~{if defined(cm_models_file) then ("--cmmodelsfile " +  '"' + cm_models_file + '"') else ""} \
      ~{if defined(hmm_models_file) then ("--hmmmodelsfile " +  '"' + hmm_models_file + '"') else ""} \
      ~{if (numeric_version) then "--numeric-version" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hmm_compare_result_file: "Path to HMMCompare result file"
    cm_models_file: "Path to covariance model file"
    hmm_models_file: "Path to hmm model file"
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}