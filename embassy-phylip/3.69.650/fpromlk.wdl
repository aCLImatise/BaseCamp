version 1.0

task Fpromlk {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean modelModel
    Boolean gammaGammaType
  }
  command <<<
    fpromlk \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-model" false="" modelModel} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}