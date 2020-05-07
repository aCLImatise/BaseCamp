version 1.0

task Simsearch {
  input {
    String kKNearest
    String thresholdThreshold
    String queriesQueries
    Boolean nxnNxn
    String queryQuery
    String hexHexQuery
    String queryQueryId
    String queryQueryFormat
    String targetTargetFormat
    File outputOutput
    Boolean countCount
    String batchBatchSize
    Boolean scanScan
    Boolean memoryMemory
    Boolean timesTimes
    String? targetTargetFilename
  }
  command <<<
    simsearch \
      ~{targetTargetFilename} \
      ~{if defined(kKNearest) then ("--k-nearest " +  '"' + kKNearest + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(queriesQueries) then ("--queries " +  '"' + queriesQueries + '"') else ""} \
      ~{true="--NxN" false="" nxnNxn} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(hexHexQuery) then ("--hex-query " +  '"' + hexHexQuery + '"') else ""} \
      ~{if defined(queryQueryId) then ("--query-id " +  '"' + queryQueryId + '"') else ""} \
      ~{if defined(queryQueryFormat) then ("--query-format " +  '"' + queryQueryFormat + '"') else ""} \
      ~{if defined(targetTargetFormat) then ("--target-format " +  '"' + targetTargetFormat + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{if defined(batchBatchSize) then ("--batch-size " +  '"' + batchBatchSize + '"') else ""} \
      ~{true="--scan" false="" scanScan} \
      ~{true="--memory" false="" memoryMemory} \
      ~{true="--times" false="" timesTimes}
  >>>
}