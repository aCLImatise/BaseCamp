version 1.0

task _fdnamlk {
  input {
    Boolean nNCategories
    Boolean gammaGammaType
  }
  command <<<
    _fdnamlk \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}