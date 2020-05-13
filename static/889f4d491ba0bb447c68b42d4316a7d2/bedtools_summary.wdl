version 1.0

task BedtoolsSummary {
  input {
    String? chr18Chr18Gl000207Random
  }
  command <<<
    bedtools summary \
      ~{chr18Chr18Gl000207Random}
  >>>
}