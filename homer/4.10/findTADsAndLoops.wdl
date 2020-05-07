version 1.0

task FindTADsAndLoops.pl {
  input {
    Boolean cpuCpu
    Boolean resRes
    Boolean windowWindow
    Boolean balanceBalance
    Boolean mindMindIst
    Boolean maxMaxDist
    Boolean mintMintAdSize
    Boolean mintMintAdScore
    Boolean keepKeepOverlappingTads
    Boolean minMinLoopDist
    Boolean anchorAnchorSize
    Boolean anchorAnchorLocalBgSize
    Boolean minMinLoopReads
    Boolean skipSkipFiltering
    Boolean keepKeepUnfiltered
    Boolean pP
    String genomeGenome
    String badBadChr
    Boolean minMinCoverageTad
    Boolean minMinCoverageAnchor
    Boolean insInsDist
    Boolean didDidIst
    Boolean overrideOverride
    Boolean rawRaw
    Boolean normNormTotal
  }
  command <<<
    findTADsAndLoops.pl \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-res" false="" resRes} \
      ~{true="-window" false="" windowWindow} \
      ~{true="-balance" false="" balanceBalance} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-minTADsize" false="" mintMintAdSize} \
      ~{true="-minTADscore" false="" mintMintAdScore} \
      ~{true="-keepOverlappingTADs" false="" keepKeepOverlappingTads} \
      ~{true="-minLoopDist" false="" minMinLoopDist} \
      ~{true="-anchorSize" false="" anchorAnchorSize} \
      ~{true="-anchorLocalBgSize" false="" anchorAnchorLocalBgSize} \
      ~{true="-minLoopReads" false="" minMinLoopReads} \
      ~{true="-skipFiltering" false="" skipSkipFiltering} \
      ~{true="-keepUnfiltered" false="" keepKeepUnfiltered} \
      ~{true="-p" false="" pP} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(badBadChr) then ("-badChr " +  '"' + badBadChr + '"') else ""} \
      ~{true="-minCoverageTAD" false="" minMinCoverageTad} \
      ~{true="-minCoverageAnchor" false="" minMinCoverageAnchor} \
      ~{true="-insDist" false="" insInsDist} \
      ~{true="-diDist" false="" didDidIst} \
      ~{true="-override" false="" overrideOverride} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-normTotal" false="" normNormTotal}
  >>>
}