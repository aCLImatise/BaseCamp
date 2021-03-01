version 1.0

task Spadeskmercount {
  input {
    Int? km_er
    String? dataset
    String? threads
    Directory? workdir
    Int? bufsize
  }
  command <<<
    spades_kmercount \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(bufsize) then ("--bufsize " +  '"' + bufsize + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  parameter_meta {
    km_er: "K-mer length"
    dataset: "Dataset description (in YAML), input files ignored"
    threads: "# of threads to use"
    workdir: "Working directory to use"
    bufsize: "Sorting buffer size, per thread"
  }
  output {
    File out_stdout = stdout()
  }
}