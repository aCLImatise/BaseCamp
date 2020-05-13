version 1.0

task MakeStreamingDNADatabase.py {
  input {
    String primePrime
    String threadsThreads
    String numNumHashes
    String kKSize
    Boolean verboseVerbose
    String? inInFile
    String? outOutFile
  }
  command <<<
    MakeStreamingDNADatabase.py \
      ~{inInFile} \
      ~{if defined(primePrime) then ("--prime " +  '"' + primePrime + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(numNumHashes) then ("--num_hashes " +  '"' + numNumHashes + '"') else ""} \
      ~{if defined(kKSize) then ("--k_size " +  '"' + kKSize + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outOutFile}
  >>>
}