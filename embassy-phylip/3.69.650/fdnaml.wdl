version 1.0

task Fdnaml {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean gammaGammaType
  }
  command <<<
    fdnaml \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}