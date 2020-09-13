version 1.0

task Streamer1d {
  input {
    Float in_dot_two_ddot_pairs_do_tgz
  }
  command <<<
    streamer_1d \
      ~{in_dot_two_ddot_pairs_do_tgz}
  >>>
  parameter_meta {
    in_dot_two_ddot_pairs_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}