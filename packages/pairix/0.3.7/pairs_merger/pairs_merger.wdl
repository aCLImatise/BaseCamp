version 1.0

task PairsMerger {
  input {
    Int in_three_dot_pairs_do_tgz
  }
  command <<<
    pairs_merger \
      ~{in_three_dot_pairs_do_tgz}
  >>>
  parameter_meta {
    in_three_dot_pairs_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
  }
}