version 1.0

task _fseqboot {
  input {
    Boolean categoriesCategories
    Boolean weightsWeights
    Boolean testTest
    Boolean printPrintData
  }
  command <<<
    _fseqboot \
      ~{true="-categories" false="" categoriesCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-test" false="" testTest} \
      ~{true="-printdata" false="" printPrintData}
  >>>
}