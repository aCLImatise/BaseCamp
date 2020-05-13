version 1.0

task FilterPSL.pl {
  input {
    String pairPairBed
    String miniMiniD
    String minMinCover
    Boolean uniqUniq
    Boolean uniqUniqThresh
    Boolean bestBest
    String commonCommonGeneFile
    Boolean noNoIntrons
    Boolean pairedPaired
    String maxMaxIntronLen
    Boolean verboseVerbose
  }
  command <<<
    filterPSL.pl \
      ~{if defined(pairPairBed) then ("--pairbed " +  '"' + pairPairBed + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minId " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(minMinCover) then ("--minCover " +  '"' + minMinCover + '"') else ""} \
      ~{true="--uniq" false="" uniqUniq} \
      ~{true="--uniqthresh" false="" uniqUniqThresh} \
      ~{true="--best" false="" bestBest} \
      ~{if defined(commonCommonGeneFile) then ("--commongenefile " +  '"' + commonCommonGeneFile + '"') else ""} \
      ~{true="--nointrons" false="" noNoIntrons} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(maxMaxIntronLen) then ("--maxintronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}