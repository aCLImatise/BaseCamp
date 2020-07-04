version 1.0

task MagImprove {
  input {
    String? kmer_length_use
    File? reference
    String? threads
    String? tmpdir
  }
  command <<<
    mag-improve \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    reference: "fasta file with reference sequence (for benchmarking purposes)"
    threads: "# of threads to use"
    tmpdir: "scratch directory to use"
  }
}