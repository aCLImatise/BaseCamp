version 1.0

task StreamingQueryDNADatabase.py {
  input {
    String threadsThreads
    String containmentContainmentThreshold
    Boolean plotPlotFile
    String readsReadsPerCore
    String filterFilterFile
    String locationLocationOfThresh
    Boolean sensitiveSensitive
    Boolean verboseVerbose
    String? inInFile
    String? referenceReferenceFile
    String? outOutFile
    String? rangeRange
  }
  command <<<
    StreamingQueryDNADatabase.py \
      ~{inInFile} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(containmentContainmentThreshold) then ("--containment_threshold " +  '"' + containmentContainmentThreshold + '"') else ""} \
      ~{true="--plot_file" false="" plotPlotFile} \
      ~{if defined(readsReadsPerCore) then ("--reads_per_core " +  '"' + readsReadsPerCore + '"') else ""} \
      ~{if defined(filterFilterFile) then ("--filter_file " +  '"' + filterFilterFile + '"') else ""} \
      ~{if defined(locationLocationOfThresh) then ("--location_of_thresh " +  '"' + locationLocationOfThresh + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{referenceReferenceFile} \
      ~{outOutFile} \
      ~{rangeRange}
  >>>
}