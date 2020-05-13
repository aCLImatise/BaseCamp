version 1.0

task MetawrapAnnotateBins {
  input {
    String oO
    Int tT
    String bB
    String? metaMetaWrap
    String? annotateAnnotateBins
  }
  command <<<
    metawrap annotate_bins \
      ~{metaMetaWrap} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{annotateAnnotateBins}
  >>>
}