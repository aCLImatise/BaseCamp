version 1.0

task AthenaMeta {
  input {
    String configConfig
    Boolean checkCheckPrereqs
    Boolean testTest
    Boolean forceForceReads
    String threadsThreads
  }
  command <<<
    athena-meta \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--check_prereqs" false="" checkCheckPrereqs} \
      ~{true="--test" false="" testTest} \
      ~{true="--force_reads" false="" forceForceReads} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}