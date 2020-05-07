version 1.0

task BcftoolsIsec {
  input {
    String collapseCollapse
    Boolean complementComplement
    String excludeExclude
    String applyApplyFilters
    String includeInclude
    Boolean noNoVersion
    Boolean nNFiles
    File outputOutput
    Boolean outputOutputType
    String prefixPrefix
    String regionsRegions
    File regionsRegionsFile
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    String writeWrite
  }
  command <<<
    bcftools isec \
      ~{if defined(collapseCollapse) then ("--collapse " +  '"' + collapseCollapse + '"') else ""} \
      ~{true="--complement" false="" complementComplement} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(applyApplyFilters) then ("--apply-filters " +  '"' + applyApplyFilters + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{true="--nfiles" false="" nNFiles} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWrite) then ("--write " +  '"' + writeWrite + '"') else ""}
  >>>
}