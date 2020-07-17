version 1.0

task EslAlimergeAlignment file 1 {
  input {
    String alignment_file_two
  }
  command <<<
    esl-alimerge alignment file 1 \
      ~{alignment_file_two}
  >>>
  parameter_meta {
    alignment_file_two: ""
  }
}