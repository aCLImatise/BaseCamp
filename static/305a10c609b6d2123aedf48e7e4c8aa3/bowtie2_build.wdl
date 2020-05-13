version 1.0

task Bowtie2Build {
  input {
    Boolean oO
    Boolean tT
    Int threadsThreads
    Int seedSeed
    Boolean qQ
    String? referenceReferenceIn
    String? bt2Bt2IndexBase
  }
  command <<<
    bowtie2-build \
      ~{referenceReferenceIn} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{bt2Bt2IndexBase}
  >>>
}