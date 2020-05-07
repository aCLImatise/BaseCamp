version 1.0

task RemoveAdapter.py {
  input {
    String outputOutput1
    String outputOutput2
    String logLog
    String alignmentAlignmentLog
    String readsReadsOverlap
    String lenLenAdapter
    String shortestShortestRead
    String thresholdThresholdInferAdapter
    String readsReadsInferAdapter
    String trimTrimN
    String linkLink
    Boolean quietQuiet
    String authorAuthor
    String processesProcesses
  }
  command <<<
    remove-adapter.py \
      ~{if defined(outputOutput1) then ("--output_1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output_2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(alignmentAlignmentLog) then ("--alignment_log " +  '"' + alignmentAlignmentLog + '"') else ""} \
      ~{if defined(readsReadsOverlap) then ("--reads_overlap " +  '"' + readsReadsOverlap + '"') else ""} \
      ~{if defined(lenLenAdapter) then ("--len_adapter " +  '"' + lenLenAdapter + '"') else ""} \
      ~{if defined(shortestShortestRead) then ("--shortest_read " +  '"' + shortestShortestRead + '"') else ""} \
      ~{if defined(thresholdThresholdInferAdapter) then ("--threshold_infer_adapter " +  '"' + thresholdThresholdInferAdapter + '"') else ""} \
      ~{if defined(readsReadsInferAdapter) then ("--reads_infer_adapter " +  '"' + readsReadsInferAdapter + '"') else ""} \
      ~{if defined(trimTrimN) then ("--trim-n " +  '"' + trimTrimN + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}