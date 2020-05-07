version 1.0

task RebalerReadsReads {
  input {
    Boolean directDirect
    String threadsThreads
    Boolean randomRandom
  }
  command <<<
    rebaler reads reads \
      ~{true="--direct" false="" directDirect} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--random" false="" randomRandom}
  >>>
}