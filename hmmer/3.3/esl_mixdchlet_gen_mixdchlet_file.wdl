version 1.0

task EslMixdchletGenMixdchletFile {
  input {
    Boolean? options
  }
  command <<<
    esl-mixdchlet gen mixdchlet_file \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}