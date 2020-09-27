version 1.0

task SplitMfastapl {
  input {
    Float s_slash_input_dot_split_dot_one_dot_fa
  }
  command <<<
    splitMfasta_pl \
      ~{s_slash_input_dot_split_dot_one_dot_fa}
  >>>
  parameter_meta {
    s_slash_input_dot_split_dot_one_dot_fa: "s/input.split.2.fa"
  }
  output {
    File out_stdout = stdout()
  }
}