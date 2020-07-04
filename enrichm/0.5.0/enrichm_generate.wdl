version 1.0

task EnrichmGenerate {
  input {
    String? log
    String? verbosity
    String? output_directory
    Boolean? force
    String? input_matrix
    String? groups
    String? model_type
    String? testing_portion
    Boolean? grid_search
    String? threads
  }
  command <<<
    enrichm generate \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(input_matrix) then ("--input_matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(model_type) then ("--model_type " +  '"' + model_type + '"') else ""} \
      ~{if defined(testing_portion) then ("--testing_portion " +  '"' + testing_portion + '"') else ""} \
      ~{true="--grid_search" false="" grid_search} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    input_matrix: "input matrix of results"
    groups: "defined outcomes to train the data to"
    model_type: "regressor or classifier"
    testing_portion: "portion of the input data to use for testing (default = 0.2)"
    grid_search: "grid search"
    threads: "number of threads to use for hyperparameterization (default = all available)"
  }
}