version 1.0

task Pre.py {
  input {
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
    String referenceReference
    String windowWindowSize
    String threadsThreads
    String logLogFile
    Boolean verboseVerbose
    Boolean quietQuiet
    String? inputInput
    String? outputOutput
  }
  command <<<
    pre.py \
      ~{inputInput} \
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
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}