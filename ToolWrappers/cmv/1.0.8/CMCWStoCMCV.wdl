version 1.0

task CMCWStoCMCV {
  input {
    File? cm_compare_result_file
    File? models_file
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    CMCWStoCMCV \
      ~{if defined(cm_compare_result_file) then ("--cmcompareresultfile " +  '"' + cm_compare_result_file + '"') else ""} \
      ~{if defined(models_file) then ("--modelsfile " +  '"' + models_file + '"') else ""} \
      ~{if (numeric_version) then "--numeric-version" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cm_compare_result_file: "Path to CMCompare result file"
    models_file: "Path to covariance model file"
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}