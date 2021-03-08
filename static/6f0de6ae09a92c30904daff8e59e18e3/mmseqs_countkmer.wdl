version 1.0

task MmseqsCountkmer {
  input {
    Int? kmer_length_set
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    Int? threads
  }
  command <<<
    mmseqs countkmer \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    kmer_length_set: "k-mer length (0: automatically set to optimum) [5]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [0]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    threads: "Number of CPU-cores used (all by default) [2]"
  }
  output {
    File out_stdout = stdout()
  }
}