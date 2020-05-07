version 1.0

task FindMatchesBetweenKUnitigsAndReads {
  input {
    Boolean longLong
    String outputOutput
    String merMer
    Boolean gzipGzip
    String threadsThreads
    Boolean verboseVerbose
  }
  command <<<
    findMatchesBetweenKUnitigsAndReads \
      ~{true="--long" false="" longLong} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}