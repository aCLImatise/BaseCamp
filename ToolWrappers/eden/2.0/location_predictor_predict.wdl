version 1.0

task LocationPredictorPredict {
  input {
    File? input_file
    File? model_file
    File? output_dir
  }
  command <<<
    location_predictor predict \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    output_dir: "Path to output directory. (default: out)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}