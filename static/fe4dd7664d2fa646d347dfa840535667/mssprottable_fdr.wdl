version 1.0

task MssprottableFdr {
  input {
    String iI
    String dD
    String oO
    String qvQvAlity
    String scoreScoreColPattern
  }
  command <<<
    mssprottable fdr \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qvQvAlity) then ("--qvality " +  '"' + qvQvAlity + '"') else ""} \
      ~{if defined(scoreScoreColPattern) then ("--scorecolpattern " +  '"' + scoreScoreColPattern + '"') else ""}
  >>>
}