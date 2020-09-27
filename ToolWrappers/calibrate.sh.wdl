version 1.0

task Calibratesh {
  input {
    String output_file_dot_dat
    String? trans_term
  }
  command <<<
    calibrate_sh \
      ~{output_file_dot_dat} \
      ~{trans_term}
  >>>
  parameter_meta {
    output_file_dot_dat: ""
    trans_term: ""
  }
  output {
    File out_stdout = stdout()
  }
}