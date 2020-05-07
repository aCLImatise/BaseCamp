version 1.0

task TerminusCollapse {
  input {
    String consensusConsensusThresh
    String dirsDirs
    String outOut
    String threadsThreads
  }
  command <<<
    terminus collapse \
      ~{if defined(consensusConsensusThresh) then ("--consensus-thresh " +  '"' + consensusConsensusThresh + '"') else ""} \
      ~{if defined(dirsDirs) then ("--dirs " +  '"' + dirsDirs + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}