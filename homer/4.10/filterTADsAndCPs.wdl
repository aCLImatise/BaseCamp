version 1.0

task FilterTADsAndCPs.pl {
  input {
    String oO
    String cpCp
    String tadTad
    String dD
    Boolean cpuCpu
    String badBadChr
    Boolean resRes
    Boolean mintMintADir
    Boolean mintMintAdCov
    Boolean minMinCpScore
    Boolean minMinCpCov
  }
  command <<<
    filterTADsAndCPs.pl \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cpCp) then ("-cp " +  '"' + cpCp + '"') else ""} \
      ~{if defined(tadTad) then ("-tad " +  '"' + tadTad + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{if defined(badBadChr) then ("-badChr " +  '"' + badBadChr + '"') else ""} \
      ~{true="-res" false="" resRes} \
      ~{true="-minTADir" false="" mintMintADir} \
      ~{true="-minTADcov" false="" mintMintAdCov} \
      ~{true="-minCPscore" false="" minMinCpScore} \
      ~{true="-minCPcov" false="" minMinCpCov}
  >>>
}