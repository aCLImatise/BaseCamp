version 1.0

task PoppunkReferences {
  input {
    String networkNetwork
    String distancesDistances
    String refRefDb
    String modelModel
    String clustersClusters
    String outputOutput
    Boolean noNoReSketch
    Boolean useUseMash
    String mashMash
    String threadsThreads
  }
  command <<<
    poppunk_references \
      ~{if defined(networkNetwork) then ("--network " +  '"' + networkNetwork + '"') else ""} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref-db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-resketch" false="" noNoReSketch} \
      ~{true="--use-mash" false="" useUseMash} \
      ~{if defined(mashMash) then ("--mash " +  '"' + mashMash + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}