version 1.0

task FilterTADsAndLoops.pl {
  input {
    String oO
    String loopLoop
    String tadTad
    String dD
    Boolean cpuCpu
    String genomeGenome
    String badBadChr
    Boolean resRes
    Boolean mintMintADir
    Boolean minMinLoopScore
    Boolean minMinCoverageTad
    Boolean minMinCoverageAnchor
  }
  command <<<
    filterTADsAndLoops.pl \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(loopLoop) then ("-loop " +  '"' + loopLoop + '"') else ""} \
      ~{if defined(tadTad) then ("-tad " +  '"' + tadTad + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(badBadChr) then ("-badChr " +  '"' + badBadChr + '"') else ""} \
      ~{true="-res" false="" resRes} \
      ~{true="-minTADir" false="" mintMintADir} \
      ~{true="-minLoopScore" false="" minMinLoopScore} \
      ~{true="-minCoverageTAD" false="" minMinCoverageTad} \
      ~{true="-minCoverageAnchor" false="" minMinCoverageAnchor}
  >>>
}