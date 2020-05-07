version 1.0

task FilterBam {
  input {
    Boolean bestBest
    Boolean noNoIntrons
    Boolean pairedPaired
    Boolean uniqUniq
    Boolean verboseVerbose
    String insertInsertLimit
    String maxMaxIntronLen
    String maxMaxSortesTest
    String minMinCover
    String miniMiniD
    String minMinIntronLen
    String uniqUniqThresh
    String commonCommonGeneFile
    String pairPairBedFile
    Boolean pairwisePairwiseAlignments
  }
  command <<<
    filterBam \
      ~{true="--best" false="" bestBest} \
      ~{true="--noIntrons" false="" noNoIntrons} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--uniq" false="" uniqUniq} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(insertInsertLimit) then ("--insertLimit " +  '"' + insertInsertLimit + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--maxIntronLen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(maxMaxSortesTest) then ("--maxSortesTest " +  '"' + maxMaxSortesTest + '"') else ""} \
      ~{if defined(minMinCover) then ("--minCover " +  '"' + minMinCover + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minId " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--minIntronLen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(uniqUniqThresh) then ("--uniqThresh " +  '"' + uniqUniqThresh + '"') else ""} \
      ~{if defined(commonCommonGeneFile) then ("--commonGeneFile " +  '"' + commonCommonGeneFile + '"') else ""} \
      ~{if defined(pairPairBedFile) then ("--pairBedFile " +  '"' + pairPairBedFile + '"') else ""} \
      ~{true="--pairwiseAlignments" false="" pairwisePairwiseAlignments}
  >>>
}