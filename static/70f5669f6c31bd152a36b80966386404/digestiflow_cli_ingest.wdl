version 1.0

task DigestiflowCliIngest {
  input {
    Boolean analyzeAnalyzeAdapters
    Boolean dryDryRun
    Boolean forceForceAnalyzeAdapters
    Boolean logLogToken
    Boolean noNoRegister
    Boolean noNoUpdate
    Boolean quietQuiet
    Boolean updateUpdateIfStateFinal
    Boolean verboseVerbose
    String minMinIndexFraction
    String projectProjectUuid
    String sampleSampleReadsPerTile
    String threadsThreads
  }
  command <<<
    digestiflow-cli ingest \
      ~{true="--analyze-adapters" false="" analyzeAnalyzeAdapters} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--force-analyze-adapters" false="" forceForceAnalyzeAdapters} \
      ~{true="--log-token" false="" logLogToken} \
      ~{true="--no-register" false="" noNoRegister} \
      ~{true="--no-update" false="" noNoUpdate} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--update-if-state-final" false="" updateUpdateIfStateFinal} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(minMinIndexFraction) then ("--min-index-fraction " +  '"' + minMinIndexFraction + '"') else ""} \
      ~{if defined(projectProjectUuid) then ("--project-uuid " +  '"' + projectProjectUuid + '"') else ""} \
      ~{if defined(sampleSampleReadsPerTile) then ("--sample-reads-per-tile " +  '"' + sampleSampleReadsPerTile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}