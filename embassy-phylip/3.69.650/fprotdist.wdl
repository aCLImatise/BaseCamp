version 1.0

task Fprotdist {
  input {
    Boolean nNCategories
    Boolean weightsWeights
    Boolean methodMethod
  }
  command <<<
    fprotdist \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-method" false="" methodMethod}
  >>>
}