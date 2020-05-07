version 1.0

task Rebaler {
  input {
    Boolean directDirect
    String threadsThreads
    Boolean randomRandom
  }
  command <<<
    rebaler \
      ~{true="--direct" false="" directDirect} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--random" false="" randomRandom}
  >>>
}