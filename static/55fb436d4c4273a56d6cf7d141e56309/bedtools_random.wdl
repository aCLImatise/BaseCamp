version 1.0

task BedtoolsRandom {
  input {
    Boolean lL
    Boolean nN
    Boolean seedSeed
    String? chr18Chr18Gl000207Random
  }
  command <<<
    bedtools random \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-seed" false="" seedSeed}
  >>>
}