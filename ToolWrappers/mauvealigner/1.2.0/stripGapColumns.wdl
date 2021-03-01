version 1.0

task StripGapColumns {
  input {
    String input_x_mfa
    String output_x_mfa
  }
  command <<<
    stripGapColumns \
      ~{input_x_mfa} \
      ~{output_x_mfa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_x_mfa: ""
    output_x_mfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}