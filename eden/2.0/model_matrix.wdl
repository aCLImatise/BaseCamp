version 1.0

task ModelMatrix {
  input {
    File? input_file
    File? model_file
    File? output_dir
    File? output_format
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
    output_format: "Output file format. (default: MatrixMarket)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_output_format = "${in_output_format}"
  }
}