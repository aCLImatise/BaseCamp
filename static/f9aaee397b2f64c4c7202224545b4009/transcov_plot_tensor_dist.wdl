version 1.0

task TranscovPlottensordist {
  input {
    String input_tensor
  }
  command <<<
    transcov plot_tensor_dist \
      ~{input_tensor}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_tensor: ""
  }
  output {
    File out_stdout = stdout()
  }
}