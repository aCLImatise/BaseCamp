version 1.0

task SsuEslSfetchName {
  input {
    String ssu_esl_s_fetch
    String sq_file
    String name
  }
  command <<<
    ssu-esl-sfetch name \
      ~{ssu_esl_s_fetch} \
      ~{sq_file} \
      ~{name}
  >>>
  parameter_meta {
    ssu_esl_s_fetch: ""
    sq_file: ""
    name: ""
  }
}