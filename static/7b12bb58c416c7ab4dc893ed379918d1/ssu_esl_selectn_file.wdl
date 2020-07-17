version 1.0

task SsuEslSelectnFile {
  input {
    Boolean? options
    String ssu_esl_select_n
    String n
    File file
  }
  command <<<
    ssu-esl-selectn file \
      ~{ssu_esl_select_n} \
      ~{n} \
      ~{file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    ssu_esl_select_n: ""
    n: ""
    file: ""
  }
}