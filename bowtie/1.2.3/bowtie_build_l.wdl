version 1.0

task BowtieBuildL {
  input {
    Boolean oO
    Boolean tT
    Int threadsThreads
    Boolean nNToA
    Int seedSeed
    Boolean qQ
    String? referenceReferenceIn
    String? eEBwtOutfileBase
  }
  command <<<
    bowtie-build-l \
      ~{referenceReferenceIn} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--ntoa" false="" nNToA} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{eEBwtOutfileBase}
  >>>
}