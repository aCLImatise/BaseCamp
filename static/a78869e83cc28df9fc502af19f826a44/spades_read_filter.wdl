version 1.0

task Spadesreadfilter {
  input {
    Int? km_er
    String? cov
    String? dataset
    String? threads
    Directory? outdir
  }
  command <<<
    spades_read_filter \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    km_er: "K-mer length"
    cov: "Median kmer count threshold (read pairs, s.t. kmer count median for BOTH reads LESS OR EQUAL to this value will be ignored)"
    dataset: "Dataset description (in YAML)"
    threads: "# of threads to use"
    outdir: "Output directory to use"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}