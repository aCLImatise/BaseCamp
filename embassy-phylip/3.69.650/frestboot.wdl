version 1.0

task Frestboot {
  input {
    Boolean weightsWeights
    Boolean testTest
    Boolean enzymesEnzymes
    Boolean printPrintData
  }
  command <<<
    frestboot \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-test" false="" testTest} \
      ~{true="-enzymes" false="" enzymesEnzymes} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}