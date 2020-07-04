version 1.0

task EslAlimergeAlignment file 2 {
  input {
    String esl_ali_merge
    String alignment_file_one
    String alignment_file_two
  }
  command <<<
    esl-alimerge alignment file 2 \
      ~{esl_ali_merge} \
      ~{alignment_file_one} \
      ~{alignment_file_two}
  >>>
  parameter_meta {
    esl_ali_merge: ""
    alignment_file_one: ""
    alignment_file_two: ""
  }
}