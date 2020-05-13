version 1.0

task Fdnamlk {
  input {
    Boolean nNCategories
    Boolean gammaGammaType
  }
  command <<<
    fdnamlk \
      ~{true="-ncategories" false="" nNCategories} \
      ~{true="-gammatype" false="" gammaGammaType}
  >>>
}