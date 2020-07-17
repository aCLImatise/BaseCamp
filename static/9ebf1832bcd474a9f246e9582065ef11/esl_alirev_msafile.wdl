version 1.0

task EslAlirevMsafile {
  input {
    Boolean? options
  }
  command <<<
    esl-alirev msafile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}