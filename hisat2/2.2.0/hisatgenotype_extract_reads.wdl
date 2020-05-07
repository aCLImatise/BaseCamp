version 1.0

task HisatgenotypeExtractReads.py {
  input {
    String databaseDatabaseList
    Boolean simulationSimulation
    String threadsThreads
    String threadsThreadsAProcess
    Int maxMaxSample
    String jobJobRange
    String alignerAligner
    Boolean extractExtractWhole
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_extract_reads.py \
      ~{if defined(databaseDatabaseList) then ("--database-list " +  '"' + databaseDatabaseList + '"') else ""} \
      ~{true="--simulation" false="" simulationSimulation} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(threadsThreadsAProcess) then ("--threads-aprocess " +  '"' + threadsThreadsAProcess + '"') else ""} \
      ~{if defined(maxMaxSample) then ("--max-sample " +  '"' + maxMaxSample + '"') else ""} \
      ~{if defined(jobJobRange) then ("--job-range " +  '"' + jobJobRange + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--extract-whole" false="" extractExtractWhole} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}