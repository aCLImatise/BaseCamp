version 1.0

task _fprotdist {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean methodMethod
  }
  command <<<
    _fprotdist \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-method" false="" methodMethod}
  >>>
}