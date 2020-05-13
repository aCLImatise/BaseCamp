version 1.0

task Nthll {
  input {
    String threadsThreads
    String kmKmEr
  }
  command <<<
    nthll \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""}
  >>>
}