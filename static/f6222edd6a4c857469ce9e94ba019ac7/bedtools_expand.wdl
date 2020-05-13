version 1.0

task BedtoolsExpand {
  input {
    Boolean iI
    Boolean cC
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
  }
  command <<<
    bedtools expand \
      ~{chr1Chr1} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{chr1Chr1} \
      ~{chr1Chr1} \
      ~{chr1Chr1} \
      ~{chr1Chr1} \
      ~{chr1Chr1}
  >>>
}