version 1.0

task MetaWRAPClassifyBins {
  input {
    String bB
    String oO
    Int tT
  }
  command <<<
    metaWRAP classify_bins \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}