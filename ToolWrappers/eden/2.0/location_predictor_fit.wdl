version 1.0

task LocationPredictorFit {
  input {
    File? input_file
    File? model_file
    File? output_dir
    Array[String] selected_column_names
  }
  command <<<
    location_predictor fit \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(selected_column_names) then ("--selected-column-names " +  '"' + selected_column_names + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    output_dir: "Path to output directory. (default: out)"
    selected_column_names: ".... (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}