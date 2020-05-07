version 1.0

task MetawrapClassifyBins {
  input {
    String bB
    String oO
    Int tT
    String? metaMetaWrap
    String? classifyClassifyBins
  }
  command <<<
    metawrap classify_bins \
      ~{metaMetaWrap} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{classifyClassifyBins}
  >>>
}