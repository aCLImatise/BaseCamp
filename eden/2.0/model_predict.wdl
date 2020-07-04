version 1.0

task ModelPredict {
  input {
    String? input_file
    String? model_file
    String? output_dir
  }
  command <<<
    model predict \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    output_dir: "Path to output directory. (default: out)"
  }
}