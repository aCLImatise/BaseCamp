version 1.0

task Minipolish {
  input {
    String threadsThreads
    String roundsRounds
    Boolean pacPacBio
    String? readsReads
    String? assemblyAssembly
  }
  command <<<
    minipolish \
      ~{readsReads} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(roundsRounds) then ("--rounds " +  '"' + roundsRounds + '"') else ""} \
      ~{true="--pacbio" false="" pacPacBio} \
      ~{assemblyAssembly}
  >>>
}