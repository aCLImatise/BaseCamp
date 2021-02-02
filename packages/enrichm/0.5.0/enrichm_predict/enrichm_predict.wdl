version 1.0

task EnrichmPredict {
  input {
    File? log
    Int? verbosity
    Directory? output_directory
    Boolean? force
    Directory? forester_model_directory
    String? input_matrix
  }
  command <<<
    enrichm predict \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(forester_model_directory) then ("--forester_model_directory " +  '"' + forester_model_directory + '"') else ""} \
      ~{if defined(input_matrix) then ("--input_matrix " +  '"' + input_matrix + '"') else ""}
  >>>
  parameter_meta {
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    forester_model_directory: "Pickled model to use"
    input_matrix: "matrix of data to predict\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    Directory out_output_directory = "${in_output_directory}"
  }
}