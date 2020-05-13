version 1.0

task MssprottableBestpeptide {
  input {
    String iI
    String dD
    String oO
    String pepPepTable
    String protProtCol
    String scoreScoreColPattern
    String protProtColPattern
    Boolean logLogScore
  }
  command <<<
    mssprottable bestpeptide \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pepPepTable) then ("--peptable " +  '"' + pepPepTable + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""} \
      ~{if defined(scoreScoreColPattern) then ("--scorecolpattern " +  '"' + scoreScoreColPattern + '"') else ""} \
      ~{if defined(protProtColPattern) then ("--protcolpattern " +  '"' + protProtColPattern + '"') else ""} \
      ~{true="--logscore" false="" logLogScore}
  >>>
}