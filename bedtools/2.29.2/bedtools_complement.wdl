version 1.0

task BedtoolsComplement {
  input {
    Boolean lL
    String? chr18Chr18Gl000207Random
  }
  command <<<
    bedtools complement \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-L" false="" lL}
  >>>
}