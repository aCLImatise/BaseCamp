version 1.0

task MsspsmtableIsonormalize {
  input {
    String iI
    String dD
    String oO
    String isIsObQuantColPattern
    String medianMedianPsms
    Array[String]+ denomDenomPatterns
    Array[String]+ denomDenomCols
    Int minMinInt
  }
  command <<<
    msspsmtable isonormalize \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""} \
      ~{if defined(medianMedianPsms) then ("--medianpsms " +  '"' + medianMedianPsms + '"') else ""} \
      ~{if defined(denomDenomPatterns) then ("--denompatterns " +  '"' + denomDenomPatterns + '"') else ""} \
      ~{if defined(denomDenomCols) then ("--denomcols " +  '"' + denomDenomCols + '"') else ""} \
      ~{if defined(minMinInt) then ("--minint " +  '"' + minMinInt + '"') else ""}
  >>>
}