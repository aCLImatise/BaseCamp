version 1.0

task _ffreqboot {
  input {
    Boolean weightsWeights
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    _ffreqboot \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}