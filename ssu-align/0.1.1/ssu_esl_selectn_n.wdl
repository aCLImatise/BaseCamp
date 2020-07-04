version 1.0

task SsuEslSelectnN {
  input {
    Boolean? options
    File file
  }
  command <<<
    ssu-esl-selectn n \
      ~{file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    file: ""
  }
}