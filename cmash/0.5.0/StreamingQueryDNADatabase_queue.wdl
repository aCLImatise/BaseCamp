version 1.0

task StreamingQueryDNADatabaseQueue.py {
  input {
    String threadsThreads
    String containmentContainmentThreshold
    Boolean plotPlotFile
    String filterFilterFile
    String locationLocationOfThresh
    String? inInFile
    String? referenceReferenceFile
    String? outOutFile
    String? rangeRange
  }
  command <<<
    StreamingQueryDNADatabase_queue.py \
      ~{inInFile} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(containmentContainmentThreshold) then ("--containment_threshold " +  '"' + containmentContainmentThreshold + '"') else ""} \
      ~{true="--plot_file" false="" plotPlotFile} \
      ~{if defined(filterFilterFile) then ("--filter_file " +  '"' + filterFilterFile + '"') else ""} \
      ~{if defined(locationLocationOfThresh) then ("--location_of_thresh " +  '"' + locationLocationOfThresh + '"') else ""} \
      ~{referenceReferenceFile} \
      ~{outOutFile} \
      ~{rangeRange}
  >>>
}