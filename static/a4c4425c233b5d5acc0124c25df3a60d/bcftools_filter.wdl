version 1.0

task BcftoolsFilter {
  input {
    String excludeExclude
    Int snpSnpGap
    Int inInDelGap
    String includeInclude
    Boolean modeMode
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    String regionsRegions
    File regionsRegionsFile
    String softSoftFilter
    Boolean setSetGts
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    String? inInVcfGz
  }
  command <<<
    bcftools filter \
      ~{inInVcfGz} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(snpSnpGap) then ("--SnpGap " +  '"' + snpSnpGap + '"') else ""} \
      ~{if defined(inInDelGap) then ("--IndelGap " +  '"' + inInDelGap + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(softSoftFilter) then ("--soft-filter " +  '"' + softSoftFilter + '"') else ""} \
      ~{true="--set-GTs" false="" setSetGts} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}