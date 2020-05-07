version 1.0

task ValidateFiles {
  input {
    String asAs
    Boolean tabTab
    String chromChromDb
    File chromChromInfo
    Boolean colorColorSpace
    Boolean isIsSorted
    Boolean doDoReport
    Boolean versionVersion
    File genomeGenome
    Boolean nNMatch
    String matchMatchFirst
    String mismatchesMismatches
    String mismatchMismatchTotalQuality
    Boolean mmMmPerPair
    String mmMmCheckOneInn
    Boolean allowAllowOther
    Boolean allowAllowBadLength
    Boolean complementComplementMinus
    String bamBamPercent
    Boolean privatePrivateData
    String? broadBroadPeak
    String? narrowNarrowPeak
    String? gappedGappedPeak
    String? bedBedGraph
    String? rccRcc
    String? idIdAt
  }
  command <<<
    validateFiles \
      ~{broadBroadPeak} \
      ~{if defined(asAs) then ("-as " +  '"' + asAs + '"') else ""} \
      ~{true="-tab" false="" tabTab} \
      ~{if defined(chromChromDb) then ("-chromDb " +  '"' + chromChromDb + '"') else ""} \
      ~{if defined(chromChromInfo) then ("-chromInfo " +  '"' + chromChromInfo + '"') else ""} \
      ~{true="-colorSpace" false="" colorColorSpace} \
      ~{true="-isSorted" false="" isIsSorted} \
      ~{true="-doReport" false="" doDoReport} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-nMatch" false="" nNMatch} \
      ~{if defined(matchMatchFirst) then ("-matchFirst " +  '"' + matchMatchFirst + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("-mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(mismatchMismatchTotalQuality) then ("-mismatchTotalQuality " +  '"' + mismatchMismatchTotalQuality + '"') else ""} \
      ~{true="-mmPerPair" false="" mmMmPerPair} \
      ~{if defined(mmMmCheckOneInn) then ("-mmCheckOneInN " +  '"' + mmMmCheckOneInn + '"') else ""} \
      ~{true="-allowOther" false="" allowAllowOther} \
      ~{true="-allowBadLength" false="" allowAllowBadLength} \
      ~{true="-complementMinus" false="" complementComplementMinus} \
      ~{if defined(bamBamPercent) then ("-bamPercent " +  '"' + bamBamPercent + '"') else ""} \
      ~{true="-privateData" false="" privatePrivateData} \
      ~{narrowNarrowPeak} \
      ~{gappedGappedPeak} \
      ~{bedBedGraph} \
      ~{rccRcc} \
      ~{idIdAt}
  >>>
}