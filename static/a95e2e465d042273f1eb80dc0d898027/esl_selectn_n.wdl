version 1.0

task EslSelectnN {
  input {
    Boolean? options
    File file
  }
  command <<<
    esl-selectn n \
      ~{file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    file: ""
  }
}