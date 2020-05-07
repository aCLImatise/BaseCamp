version 1.0

task MakeDNADatabase.py {
  input {
    String primePrime
    String threadsThreads
    String numNumHashes
    String kKSize
    Boolean intersectIntersectNodeGraph
    String? inInFile
    String? outOutFile
  }
  command <<<
    MakeDNADatabase.py \
      ~{inInFile} \
      ~{if defined(primePrime) then ("--prime " +  '"' + primePrime + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(numNumHashes) then ("--num_hashes " +  '"' + numNumHashes + '"') else ""} \
      ~{if defined(kKSize) then ("--k_size " +  '"' + kKSize + '"') else ""} \
      ~{true="--intersect_nodegraph" false="" intersectIntersectNodeGraph} \
      ~{outOutFile}
  >>>
}