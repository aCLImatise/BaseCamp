version 1.0

task _fdnainvar {
  input {
    Boolean weightsWeights
    Boolean printPrintData
  }
  command <<<
    _fdnainvar \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}