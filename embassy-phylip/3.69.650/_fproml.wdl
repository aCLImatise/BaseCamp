version 1.0

task _fproml {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean modelModel
    Boolean gammaGammaType
  }
  command <<<
    _fproml \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-model" false="" modelModel} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}