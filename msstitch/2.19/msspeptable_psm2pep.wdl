version 1.0

task MsspeptablePsm2pep {
  input {
    String iI
    String dD
    String oO
    String spectraSpectraCol
    String scoreScoreColPattern
    String isIsObQuantColPattern
    String ms1quantcolMs1quantcolPattern
  }
  command <<<
    msspeptable psm2pep \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(spectraSpectraCol) then ("--spectracol " +  '"' + spectraSpectraCol + '"') else ""} \
      ~{if defined(scoreScoreColPattern) then ("--scorecolpattern " +  '"' + scoreScoreColPattern + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""} \
      ~{if defined(ms1quantcolMs1quantcolPattern) then ("--ms1quantcolpattern " +  '"' + ms1quantcolMs1quantcolPattern + '"') else ""}
  >>>
}