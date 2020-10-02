version 1.0

task TranscovPlottensordist {
  input {
    File? output_file
    String input_tensor
  }
  command <<<
    transcov plot_tensor_dist \
      ~{input_tensor} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "--help                  Show this message and exit.\\n"
    input_tensor: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}