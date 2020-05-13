version 1.0

task MssprottablePickedfdr {
  input {
    String iI
    String dD
    String oO
    String decoyDecoyFn
    String targetTargetFastA
    String decoyDecoyFastA
    String pickPickType
    String geneGeneField
    String fastFastADelim
  }
  command <<<
    mssprottable pickedfdr \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(decoyDecoyFn) then ("--decoyfn " +  '"' + decoyDecoyFn + '"') else ""} \
      ~{if defined(targetTargetFastA) then ("--targetfasta " +  '"' + targetTargetFastA + '"') else ""} \
      ~{if defined(decoyDecoyFastA) then ("--decoyfasta " +  '"' + decoyDecoyFastA + '"') else ""} \
      ~{if defined(pickPickType) then ("--picktype " +  '"' + pickPickType + '"') else ""} \
      ~{if defined(geneGeneField) then ("--genefield " +  '"' + geneGeneField + '"') else ""} \
      ~{if defined(fastFastADelim) then ("--fastadelim " +  '"' + fastFastADelim + '"') else ""}
  >>>
}