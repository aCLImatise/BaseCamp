version 1.0

task MsspsmtableIsoratio {
  input {
    String iI
    String dD
    String oO
    String isIsObQuantColPattern
    Array[String]+ denomDenomPatterns
    Array[String]+ denomDenomCols
    Int minMinInt
    String targetTargetTable
    String protProtCol
    String normalizeNormalize
    String normNormRatios
  }
  command <<<
    msspsmtable isoratio \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""} \
      ~{if defined(denomDenomPatterns) then ("--denompatterns " +  '"' + denomDenomPatterns + '"') else ""} \
      ~{if defined(denomDenomCols) then ("--denomcols " +  '"' + denomDenomCols + '"') else ""} \
      ~{if defined(minMinInt) then ("--minint " +  '"' + minMinInt + '"') else ""} \
      ~{if defined(targetTargetTable) then ("--targettable " +  '"' + targetTargetTable + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""} \
      ~{if defined(normalizeNormalize) then ("--normalize " +  '"' + normalizeNormalize + '"') else ""} \
      ~{if defined(normNormRatios) then ("--norm-ratios " +  '"' + normNormRatios + '"') else ""}
  >>>
}