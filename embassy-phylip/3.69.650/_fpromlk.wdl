version 1.0

task _fpromlk {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean modelModel
    Boolean gammaGammaType
  }
  command <<<
    _fpromlk \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-model" false="" modelModel} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}