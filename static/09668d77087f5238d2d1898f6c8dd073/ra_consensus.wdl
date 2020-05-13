version 1.0

task RaConsensus {
  input {
    File readsReads
    File contigsContigs
    Int threadsThreads
    File outOut
  }
  command <<<
    ra_consensus \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}