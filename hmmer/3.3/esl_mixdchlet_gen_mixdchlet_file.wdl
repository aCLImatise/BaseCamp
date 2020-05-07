version 1.0

task EslMixdchletGenMixdchletFile {
  input {
    Boolean optionsOptions
  }
  command <<<
    esl-mixdchlet gen mixdchlet_file \
      ~{true="-options" false="" optionsOptions}
  >>>
}