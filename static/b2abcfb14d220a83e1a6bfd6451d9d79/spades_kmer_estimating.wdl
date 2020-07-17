version 1.0

task SpadesKmerEstimating {
  input {
    String? km_er
    String? dataset
    String? threads
  }
  command <<<
    spades-kmer-estimating \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    km_er: "K-mer length"
    dataset: "Dataset description (in YAML)"
    threads: "# of threads to use"
  }
}