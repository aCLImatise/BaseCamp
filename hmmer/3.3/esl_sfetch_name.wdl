version 1.0

task EslSfetchName {
  input {
    String esl_s_fetch
    String sq_file
    String name
  }
  command <<<
    esl-sfetch name \
      ~{esl_s_fetch} \
      ~{sq_file} \
      ~{name}
  >>>
  parameter_meta {
    esl_s_fetch: ""
    sq_file: ""
    name: ""
  }
}