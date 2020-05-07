version 1.0

task _fdnaml {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean gammaGammaType
  }
  command <<<
    _fdnaml \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}