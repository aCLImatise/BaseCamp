version 1.0

task Fproml {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean modelModel
    Boolean gammaGammaType
  }
  command <<<
    fproml \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-model" false="" modelModel} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}