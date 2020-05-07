version 1.0

task SpadesKmercount {
  input {
    String kmKmEr
    String datasetDataset
    String threadsThreads
    String workdirWorkdir
    String bufsizeBufsize
  }
  command <<<
    spades-kmercount \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(bufsizeBufsize) then ("--bufsize " +  '"' + bufsizeBufsize + '"') else ""}
  >>>
}