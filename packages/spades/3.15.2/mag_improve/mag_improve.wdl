version 1.0

task Magimprove {
  input {
    Int? kmer_length_use
    File? reference
    String? threads
    Directory? tmpdir
  }
  command <<<
    mag_improve \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
  }
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    reference: "fasta file with reference sequence (for benchmarking purposes)"
    threads: "# of threads to use"
    tmpdir: "scratch directory to use\\n"
  }
  output {
    File out_stdout = stdout()
  }
}