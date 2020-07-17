version 1.0

task SsuEslAlimergeAlignment file 1 {
  input {
    String alignment_file_two
  }
  command <<<
    ssu-esl-alimerge alignment file 1 \
      ~{alignment_file_two}
  >>>
  parameter_meta {
    alignment_file_two: ""
  }
}