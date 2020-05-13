version 1.0

task Ffreqboot {
  input {
    Boolean weightsWeights
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    ffreqboot \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}