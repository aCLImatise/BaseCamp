version 1.0

task Fseqboot {
  input {
    Boolean categoriesCategories
    Boolean weightsWeights
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    fseqboot \
      ~{true="-categories" false="" categoriesCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}