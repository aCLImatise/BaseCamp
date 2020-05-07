version 1.0

task BcftoolsQuery {
  input {
    String excludeExclude
    String formatFormat
    Boolean printPrintHeader
    String includeInclude
    Boolean listListSamples
    File outputOutputFile
    String regionsRegions
    File regionsRegionsFile
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Boolean allowAllowUndefTags
    File vcfVcfList
  }
  command <<<
    bcftools query \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--print-header" false="" printPrintHeader} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--list-samples" false="" listListSamples} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--allow-undef-tags" false="" allowAllowUndefTags} \
      ~{if defined(vcfVcfList) then ("--vcf-list " +  '"' + vcfVcfList + '"') else ""}
  >>>
}