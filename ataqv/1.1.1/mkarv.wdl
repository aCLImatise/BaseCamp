version 1.0

task Mkarv {
  input {
    String concurrencyConcurrency
    String descriptionDescription
    Boolean forceForce
    Boolean indentIndent
    Int maximumMaximumFragmentLength
    String peakPeakReference
    String referenceReference
    String templateTemplateDirectory
    Boolean verboseVerbose
    Directory? directoryDirectory
    String? metricsMetrics
  }
  command <<<
    mkarv \
      ~{directoryDirectory} \
      ~{if defined(concurrencyConcurrency) then ("--concurrency " +  '"' + concurrencyConcurrency + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--indent" false="" indentIndent} \
      ~{if defined(maximumMaximumFragmentLength) then ("--maximum-fragment-length " +  '"' + maximumMaximumFragmentLength + '"') else ""} \
      ~{if defined(peakPeakReference) then ("--peak-reference " +  '"' + peakPeakReference + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(templateTemplateDirectory) then ("--template-directory " +  '"' + templateTemplateDirectory + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{metricsMetrics}
  >>>
}