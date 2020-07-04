version 1.0

task SsuEslAlimergeAlignment file 2 {
  input {
    String ssu_esl_ali_merge
    String alignment_file_one
    String alignment_file_two
  }
  command <<<
    ssu-esl-alimerge alignment file 2 \
      ~{ssu_esl_ali_merge} \
      ~{alignment_file_one} \
      ~{alignment_file_two}
  >>>
  parameter_meta {
    ssu_esl_ali_merge: ""
    alignment_file_one: ""
    alignment_file_two: ""
  }
}