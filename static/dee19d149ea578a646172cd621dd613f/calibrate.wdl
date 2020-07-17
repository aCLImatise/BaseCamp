version 1.0

task Calibrate.sh {
  input {
    String output_file_dot_dat
    String? trans_term
  }
  command <<<
    calibrate.sh \
      ~{output_file_dot_dat} \
      ~{trans_term}
  >>>
  parameter_meta {
    output_file_dot_dat: ""
    trans_term: ""
  }
}