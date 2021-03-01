version 1.0

task Spadeskmerestimating {
  input {
    Int? km_er
    String? dataset
    String? threads
  }
  command <<<
    spades_kmer_estimating \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er: "K-mer length"
    dataset: "Dataset description (in YAML)"
    threads: "# of threads to use"
  }
  output {
    File out_stdout = stdout()
  }
}