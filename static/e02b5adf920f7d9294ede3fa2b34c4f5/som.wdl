version 1.0

task Som.py {
  input {
    String outputOutput
    String locationLocation
    String restrictRestrictRegions
    String targetTargetRegions
    String falseFalsePositives
    String ambiguousAmbiguous
    Boolean ambiAmbiFp
    Boolean noNoAmbiFp
    Boolean countCountUnk
    Boolean noNoCountUnk
    Boolean explainExplainAmbiguous
    String referenceReference
    String scratchScratchPrefix
    Boolean keepKeepScratch
    Boolean continueContinue
    Boolean includeIncludeNonPass
    Boolean featureFeatureTable
    Boolean happyHappyStats
    String bamBam
    Boolean normalizeNormalizeTruth
    Boolean normalizeNormalizeQuery
    Boolean normalizeNormalizeAll
    Boolean fixFixChrTruth
    Boolean fixFixChrQuery
    Boolean fixFixChrTruth
    Boolean fixFixChrQuery
    Boolean noNoFixChrTruth
    Boolean noNoFixChrQuery
    Boolean noNoOrderCheck
    Boolean rocRoc
    Boolean binBinAfs
    String afAfBinsize
    String afAfTruth
    String afAfQuery
    Boolean countCountFilteredFn
    String fpFpRegionSize
    String ciCiLevel
    String logLogFile
    Boolean verboseVerbose
    Boolean quietQuiet
    String? truthTruth
    String? queryQuery
  }
  command <<<
    som.py \
      ~{truthTruth} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(restrictRestrictRegions) then ("--restrict-regions " +  '"' + restrictRestrictRegions + '"') else ""} \
      ~{if defined(targetTargetRegions) then ("--target-regions " +  '"' + targetTargetRegions + '"') else ""} \
      ~{if defined(falseFalsePositives) then ("--false-positives " +  '"' + falseFalsePositives + '"') else ""} \
      ~{if defined(ambiguousAmbiguous) then ("--ambiguous " +  '"' + ambiguousAmbiguous + '"') else ""} \
      ~{true="--ambi-fp" false="" ambiAmbiFp} \
      ~{true="--no-ambi-fp" false="" noNoAmbiFp} \
      ~{true="--count-unk" false="" countCountUnk} \
      ~{true="--no-count-unk" false="" noNoCountUnk} \
      ~{true="--explain_ambiguous" false="" explainExplainAmbiguous} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(scratchScratchPrefix) then ("--scratch-prefix " +  '"' + scratchScratchPrefix + '"') else ""} \
      ~{true="--keep-scratch" false="" keepKeepScratch} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--include-nonpass" false="" includeIncludeNonPass} \
      ~{true="--feature-table" false="" featureFeatureTable} \
      ~{true="--happy-stats" false="" happyHappyStats} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{true="--normalize-truth" false="" normalizeNormalizeTruth} \
      ~{true="--normalize-query" false="" normalizeNormalizeQuery} \
      ~{true="--normalize-all" false="" normalizeNormalizeAll} \
      ~{true="--fixchr-truth" false="" fixFixChrTruth} \
      ~{true="--fixchr-query" false="" fixFixChrQuery} \
      ~{true="--fix-chr-truth" false="" fixFixChrTruth} \
      ~{true="--fix-chr-query" false="" fixFixChrQuery} \
      ~{true="--no-fixchr-truth" false="" noNoFixChrTruth} \
      ~{true="--no-fixchr-query" false="" noNoFixChrQuery} \
      ~{true="--no-order-check" false="" noNoOrderCheck} \
      ~{true="--roc" false="" rocRoc} \
      ~{true="--bin-afs" false="" binBinAfs} \
      ~{if defined(afAfBinsize) then ("--af-binsize " +  '"' + afAfBinsize + '"') else ""} \
      ~{if defined(afAfTruth) then ("--af-truth " +  '"' + afAfTruth + '"') else ""} \
      ~{if defined(afAfQuery) then ("--af-query " +  '"' + afAfQuery + '"') else ""} \
      ~{true="--count-filtered-fn" false="" countCountFilteredFn} \
      ~{if defined(fpFpRegionSize) then ("--fp-region-size " +  '"' + fpFpRegionSize + '"') else ""} \
      ~{if defined(ciCiLevel) then ("--ci-level " +  '"' + ciCiLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{queryQuery}
  >>>
}