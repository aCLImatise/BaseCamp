version 1.0

task Hitac.py {
  input {
    String kmKmEr
    String threadsThreads
  }
  command <<<
    hitac.py \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}