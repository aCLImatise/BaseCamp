version 1.0

task CompareMaskingpl {
  input {
    Int file_one_dot_fa
    Int file_two_dot_fa
  }
  command <<<
    compare_masking_pl \
      ~{file_one_dot_fa} \
      ~{file_two_dot_fa}
  >>>
  parameter_meta {
    file_one_dot_fa: "softmasked fasta file"
    file_two_dot_fa: "softmasked second fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}