version 1.0

task SeqtkMergepe {
  input {
    String in_one_dot_fq
    String in_two_dot_fq
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
}