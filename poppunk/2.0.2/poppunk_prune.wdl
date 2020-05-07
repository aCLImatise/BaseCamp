version 1.0

task PoppunkPrune {
  input {
    String removeRemove
    String distancesDistances
    String refRefDb
    String outputOutput
    Boolean reReSketch
    Boolean useUseMash
    String mashMash
    String threadsThreads
  }
  command <<<
    poppunk_prune \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref-db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--resketch" false="" reReSketch} \
      ~{true="--use-mash" false="" useUseMash} \
      ~{if defined(mashMash) then ("--mash " +  '"' + mashMash + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}