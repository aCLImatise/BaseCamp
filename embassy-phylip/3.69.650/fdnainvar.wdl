version 1.0

task Fdnainvar {
  input {
    Boolean weightsWeights
    Boolean printPrintData
  }
  command <<<
    fdnainvar \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}