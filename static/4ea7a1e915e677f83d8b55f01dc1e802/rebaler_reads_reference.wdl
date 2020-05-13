version 1.0

task RebalerReadsReference {
  input {
    Boolean directDirect
    String threadsThreads
    Boolean randomRandom
  }
  command <<<
    rebaler reads reference \
      ~{true="--direct" false="" directDirect} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--random" false="" randomRandom}
  >>>
}