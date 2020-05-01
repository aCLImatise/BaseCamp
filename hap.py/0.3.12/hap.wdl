version 1.0

task Hap.py {
  input {
    String referenceReference
    String reportReportPrefix
    String scratchScratchPrefix
    Boolean keepKeepScratch
    String typeType
    String falseFalsePositives
    String stratificationStratification
    String stratificationStratificationRegion
    Boolean stratificationStratificationFixChr
    Boolean writeWriteVcf
    Boolean writeWriteCounts
    Boolean noNoWriteCounts
    Boolean outputOutputVtc
    Boolean preservePreserveInfo
    String rocRoc
    Boolean noNoRoc
    String rocRocRegions
    String rocRocFilter
    String rocRocDelta
    String ciCiAlpha
    Boolean noNoJson
    String locationLocation
    Boolean passPassOnly
    String filtersFiltersOnly
    String restrictRestrictRegions
    String targetTargetRegions
    Boolean leftLeftShift
    Boolean noNoLeftShift
    Boolean decomposeDecompose
    Boolean noNoDecompose
    Boolean bcfBcfToolsNorm
    Boolean fixFixChr
    Boolean noNoFixChr
    Boolean bcfBcf
    Boolean somaticSomatic
    String setSetGt
    Boolean filterFilterNonRef
    Boolean convertConvertGvcFTruth
    Boolean convertConvertGvcFQuery
    String genderGender
    Boolean preprocessPreprocessTruth
    Boolean useUseFilteredTruth
    String preprocessingPreprocessingWindowSize
    Boolean adjustAdjustConfRegions
    Boolean noNoAdjustConfRegions
    Boolean noNoHaplotypeComparison
    String windowWindowSize
    Int xXCmpEnumerationThreshold
    String xXCmpExpandHapBlocks
    String threadsThreads
    String engineEngine
    String engineEngineVcfEvalPath
    String engineEngineVcfEvalTemplate
    String scmpScmpDistance
    String loseLoseMatchDistance
    String logLogFile
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    hap.py \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(reportReportPrefix) then ("--report-prefix " +  '"' + reportReportPrefix + '"') else ""} \
      ~{if defined(scratchScratchPrefix) then ("--scratch-prefix " +  '"' + scratchScratchPrefix + '"') else ""} \
      ~{true="--keep-scratch" false="" keepKeepScratch} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(falseFalsePositives) then ("--false-positives " +  '"' + falseFalsePositives + '"') else ""} \
      ~{if defined(stratificationStratification) then ("--stratification " +  '"' + stratificationStratification + '"') else ""} \
      ~{if defined(stratificationStratificationRegion) then ("--stratification-region " +  '"' + stratificationStratificationRegion + '"') else ""} \
      ~{true="--stratification-fixchr" false="" stratificationStratificationFixChr} \
      ~{true="--write-vcf" false="" writeWriteVcf} \
      ~{true="--write-counts" false="" writeWriteCounts} \
      ~{true="--no-write-counts" false="" noNoWriteCounts} \
      ~{true="--output-vtc" false="" outputOutputVtc} \
      ~{true="--preserve-info" false="" preservePreserveInfo} \
      ~{if defined(rocRoc) then ("--roc " +  '"' + rocRoc + '"') else ""} \
      ~{true="--no-roc" false="" noNoRoc} \
      ~{if defined(rocRocRegions) then ("--roc-regions " +  '"' + rocRocRegions + '"') else ""} \
      ~{if defined(rocRocFilter) then ("--roc-filter " +  '"' + rocRocFilter + '"') else ""} \
      ~{if defined(rocRocDelta) then ("--roc-delta " +  '"' + rocRocDelta + '"') else ""} \
      ~{if defined(ciCiAlpha) then ("--ci-alpha " +  '"' + ciCiAlpha + '"') else ""} \
      ~{true="--no-json" false="" noNoJson} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{true="--pass-only" false="" passPassOnly} \
      ~{if defined(filtersFiltersOnly) then ("--filters-only " +  '"' + filtersFiltersOnly + '"') else ""} \
      ~{if defined(restrictRestrictRegions) then ("--restrict-regions " +  '"' + restrictRestrictRegions + '"') else ""} \
      ~{if defined(targetTargetRegions) then ("--target-regions " +  '"' + targetTargetRegions + '"') else ""} \
      ~{true="--leftshift" false="" leftLeftShift} \
      ~{true="--no-leftshift" false="" noNoLeftShift} \
      ~{true="--decompose" false="" decomposeDecompose} \
      ~{true="--no-decompose" false="" noNoDecompose} \
      ~{true="--bcftools-norm" false="" bcfBcfToolsNorm} \
      ~{true="--fixchr" false="" fixFixChr} \
      ~{true="--no-fixchr" false="" noNoFixChr} \
      ~{true="--bcf" false="" bcfBcf} \
      ~{true="--somatic" false="" somaticSomatic} \
      ~{if defined(setSetGt) then ("--set-gt " +  '"' + setSetGt + '"') else ""} \
      ~{true="--filter-nonref" false="" filterFilterNonRef} \
      ~{true="--convert-gvcf-truth" false="" convertConvertGvcFTruth} \
      ~{true="--convert-gvcf-query" false="" convertConvertGvcFQuery} \
      ~{if defined(genderGender) then ("--gender " +  '"' + genderGender + '"') else ""} \
      ~{true="--preprocess-truth" false="" preprocessPreprocessTruth} \
      ~{true="--usefiltered-truth" false="" useUseFilteredTruth} \
      ~{if defined(preprocessingPreprocessingWindowSize) then ("--preprocessing-window-size " +  '"' + preprocessingPreprocessingWindowSize + '"') else ""} \
      ~{true="--adjust-conf-regions" false="" adjustAdjustConfRegions} \
      ~{true="--no-adjust-conf-regions" false="" noNoAdjustConfRegions} \
      ~{true="--no-haplotype-comparison" false="" noNoHaplotypeComparison} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(xXCmpEnumerationThreshold) then ("--xcmp-enumeration-threshold " +  '"' + xXCmpEnumerationThreshold + '"') else ""} \
      ~{if defined(xXCmpExpandHapBlocks) then ("--xcmp-expand-hapblocks " +  '"' + xXCmpExpandHapBlocks + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{if defined(engineEngineVcfEvalPath) then ("--engine-vcfeval-path " +  '"' + engineEngineVcfEvalPath + '"') else ""} \
      ~{if defined(engineEngineVcfEvalTemplate) then ("--engine-vcfeval-template " +  '"' + engineEngineVcfEvalTemplate + '"') else ""} \
      ~{if defined(scmpScmpDistance) then ("--scmp-distance " +  '"' + scmpScmpDistance + '"') else ""} \
      ~{if defined(loseLoseMatchDistance) then ("--lose-match-distance " +  '"' + loseLoseMatchDistance + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}