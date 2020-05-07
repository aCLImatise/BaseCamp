version 1.0

task MsspeptableModelqvals {
  input {
    String iI
    String dD
    String oO
    String scoreScoreColPattern
    String fdrFdrColPattern
    String qQValThreshold
  }
  command <<<
    msspeptable modelqvals \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(scoreScoreColPattern) then ("--scorecolpattern " +  '"' + scoreScoreColPattern + '"') else ""} \
      ~{if defined(fdrFdrColPattern) then ("--fdrcolpattern " +  '"' + fdrFdrColPattern + '"') else ""} \
      ~{if defined(qQValThreshold) then ("--qvalthreshold " +  '"' + qQValThreshold + '"') else ""}
  >>>
}