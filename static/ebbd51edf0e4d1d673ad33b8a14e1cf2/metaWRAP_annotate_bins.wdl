version 1.0

task MetaWRAPAnnotateBins {
  input {
    String oO
    Int tT
    String bB
  }
  command <<<
    metaWRAP annotate_bins \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}