version 1.0

task Fdiscboot {
  input {
    Boolean mixMixFile
    Boolean ancAncFile
    Boolean weightsWeights
    Boolean factorFactorFile
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    fdiscboot \
      ~{true="-mixfile" false="" mixMixFile} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-factorfile" false="" factorFactorFile} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}