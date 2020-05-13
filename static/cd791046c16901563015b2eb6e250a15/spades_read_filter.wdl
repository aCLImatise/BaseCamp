version 1.0

task SpadesReadFilter {
  input {
    String kmKmEr
    String covCov
    String datasetDataset
    String threadsThreads
    String outdirOutdir
  }
  command <<<
    spades-read-filter \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(covCov) then ("--cov " +  '"' + covCov + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}