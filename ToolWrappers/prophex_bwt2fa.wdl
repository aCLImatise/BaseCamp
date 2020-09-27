version 1.0

task ProphexBwt2fa {
  input {
    String idx_base
    String output_dot_fa
  }
  command <<<
    prophex bwt2fa \
      ~{idx_base} \
      ~{output_dot_fa}
  >>>
  parameter_meta {
    idx_base: ""
    output_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}