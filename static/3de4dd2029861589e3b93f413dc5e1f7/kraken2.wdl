version 1.0

task Kraken2 {
  input {
    String dbDb
    String threadsThreads
    Boolean quickQuick
    File unclassifiedUnclassifiedOut
    File classifiedClassifiedOut
    File outputOutput
    Float confidenceConfidence
    String minimumMinimumBaseQuality
    File reportReport
    Boolean useUseMpaStyle
    Boolean reportReportZeroCounts
    Boolean memoryMemoryMapping
    Boolean pairedPaired
    Boolean useUseNames
    Boolean gzipGzipCompressed
    Boolean bzip2Bzip2Compressed
  }
  command <<<
    kraken2 \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quick" false="" quickQuick} \
      ~{if defined(unclassifiedUnclassifiedOut) then ("--unclassified-out " +  '"' + unclassifiedUnclassifiedOut + '"') else ""} \
      ~{if defined(classifiedClassifiedOut) then ("--classified-out " +  '"' + classifiedClassifiedOut + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(confidenceConfidence) then ("--confidence " +  '"' + confidenceConfidence + '"') else ""} \
      ~{if defined(minimumMinimumBaseQuality) then ("--minimum-base-quality " +  '"' + minimumMinimumBaseQuality + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{true="--use-mpa-style" false="" useUseMpaStyle} \
      ~{true="--report-zero-counts" false="" reportReportZeroCounts} \
      ~{true="--memory-mapping" false="" memoryMemoryMapping} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--use-names" false="" useUseNames} \
      ~{true="--gzip-compressed" false="" gzipGzipCompressed} \
      ~{true="--bzip2-compressed" false="" bzip2Bzip2Compressed}
  >>>
}