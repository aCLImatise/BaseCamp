version 1.0

task MergeMaskingpl {
  input {
    Int file_one_dot_fa
    Int file_two_dot_fa
    Int file_three_dot_fa
  }
  command <<<
    merge_masking_pl \
      ~{file_one_dot_fa} \
      ~{file_two_dot_fa} \
      ~{file_three_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_one_dot_fa: "softmasked fasta file"
    file_two_dot_fa: "softmasked second fasta file"
    file_three_dot_fa: "output softmasked third fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}