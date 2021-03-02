version 1.0

task PredictpyPhenotypes {
  input {
    Int? voters
    String positional_arguments
    String pt_models
    String out_dir
    String summary_file_pfams
  }
  command <<<
    predict_py phenotypes \
      ~{positional_arguments} \
      ~{pt_models} \
      ~{out_dir} \
      ~{summary_file_pfams} \
      ~{if defined(voters) then ("--voters " +  '"' + voters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    voters: "use this number of voters for the classification\\n"
    positional_arguments: "positional arguments:"
    pt_models: "archive with the phenotype predictors"
    out_dir: "directory for the phenotype predictions"
    summary_file_pfams: "summary file with pfams"
  }
  output {
    File out_stdout = stdout()
  }
}