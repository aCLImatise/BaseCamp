version 1.0

task EslTranslateSeqfile {
  input {
    Boolean? options
  }
  command <<<
    esl-translate seqfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}