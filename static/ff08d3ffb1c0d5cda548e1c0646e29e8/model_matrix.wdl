version 1.0

task ModelMatrix {
  input {
    String? input_file
    String? model_file
    String? output_dir
    String? output_format
  }
  command <<<
    model matrix \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to file containing input. (default: None)"
    model_file: "Path to a fit model file. (default: model)"
    output_dir: "Path to output directory. (default: out)"
    output_format: "Output file format. (default: MatrixMarket)"
  }
}