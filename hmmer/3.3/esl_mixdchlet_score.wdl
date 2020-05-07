version 1.0

task EslMixdchletScore {
  input {
    Boolean optionsOptions
    String? mixMixDchLetFile
    String? countsCountsFile
  }
  command <<<
    esl-mixdchlet score \
      ~{mixMixDchLetFile} \
      ~{true="-options" false="" optionsOptions} \
      ~{countsCountsFile}
  >>>
}