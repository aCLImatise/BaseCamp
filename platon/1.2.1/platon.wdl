version 1.0

task Platon {
  input {
    String dbDb
    String threadsThreads
    Boolean verboseVerbose
    Boolean characterizeCharacterize
    String outputOutput
  }
  command <<<
    platon \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--characterize" false="" characterizeCharacterize} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}