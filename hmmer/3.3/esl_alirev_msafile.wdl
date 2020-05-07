version 1.0

task EslAlirevMsafile {
  input {
    Boolean optionsOptions
  }
  command <<<
    esl-alirev msafile \
      ~{true="-options" false="" optionsOptions}
  >>>
}