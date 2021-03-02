version 1.0

task CentAdjust {
  input {
    String input_center
    String input_data_file
  }
  command <<<
    cent_adjust \
      ~{input_center} \
      ~{input_data_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_center: ""
    input_data_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}