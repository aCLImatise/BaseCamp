version 1.0

task BcftoolsMerge {
  input {
    Boolean forceForceSamples
    Boolean printPrintHeader
    File useUseHeader
    String applyApplyFilters
    Boolean filterFilterLogic
    Boolean gvcGvcF
    Boolean infoInfoRules
    File fileFileList
    String mergeMerge
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    String regionsRegions
    File regionsRegionsFile
    Int threadsThreads
  }
  command <<<
    bcftools merge \
      ~{true="--force-samples" false="" forceForceSamples} \
      ~{true="--print-header" false="" printPrintHeader} \
      ~{if defined(useUseHeader) then ("--use-header " +  '"' + useUseHeader + '"') else ""} \
      ~{if defined(applyApplyFilters) then ("--apply-filters " +  '"' + applyApplyFilters + '"') else ""} \
      ~{true="--filter-logic" false="" filterFilterLogic} \
      ~{true="--gvcf" false="" gvcGvcF} \
      ~{true="--info-rules" false="" infoInfoRules} \
      ~{if defined(fileFileList) then ("--file-list " +  '"' + fileFileList + '"') else ""} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}