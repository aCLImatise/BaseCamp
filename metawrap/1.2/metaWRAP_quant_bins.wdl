version 1.0

task MetaWRAPQuantBins {
  input {
    String bB
    String oO
    String aA
    Int tT
  }
  command <<<
    metaWRAP quant_bins \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}