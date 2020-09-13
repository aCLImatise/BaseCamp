version 1.0

task SeqtkMergepe {
  input {
    Int in_one_dot_fq
    Int in_two_dot_fq
  }
  command <<<
    seqtk mergepe \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq}
  >>>
  parameter_meta {
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}