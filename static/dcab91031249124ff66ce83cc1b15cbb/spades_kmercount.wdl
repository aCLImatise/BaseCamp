version 1.0

task SpadesKmercount {
  input {
    String? km_er
    String? dataset
    String? threads
    String? workdir
    String? bufsize
  }
  command <<<
    spades-kmercount \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(bufsize) then ("--bufsize " +  '"' + bufsize + '"') else ""}
  >>>
  parameter_meta {
    km_er: "K-mer length"
    dataset: "Dataset description (in YAML), input files ignored"
    threads: "# of threads to use"
    workdir: "Working directory to use"
    bufsize: "Sorting buffer size, per thread"
  }
}