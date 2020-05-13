version 1.0

task SpadesKmerEstimating {
  input {
    String kmKmEr
    String datasetDataset
    String threadsThreads
  }
  command <<<
    spades-kmer-estimating \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}