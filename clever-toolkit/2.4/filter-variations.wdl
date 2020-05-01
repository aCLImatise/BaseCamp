version 1.0

task FilterVariations {
  input {
    Boolean oO
    Boolean zZ
    Boolean lL
    String? variantsVariantsFile
  }
  command <<<
    filter-variations \
      ~{variantsVariantsFile} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{true="-l" false="" lL}
  >>>
}