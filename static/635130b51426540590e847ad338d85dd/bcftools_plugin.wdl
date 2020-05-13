version 1.0

task BcftoolsPlugin {
  input {
    String excludeExclude
    String includeInclude
    String regionsRegions
    File regionsRegionsFile
    String targetsTargets
    File targetsTargetsFile
    Boolean noNoVersion
    File outputOutput
    String outputOutputType
    Int threadsThreads
    Boolean listListPlugins
    Boolean verboseVerbose
  }
  command <<<
    bcftools plugin \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output-type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--list-plugins" false="" listListPlugins} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}