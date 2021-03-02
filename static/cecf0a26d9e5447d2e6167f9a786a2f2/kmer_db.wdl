version 1.0

task Kmerdb {
  input {
    Int? number_default_number
    Int? length_kmers_default
    Int? fraction_kmers_accepted
    Boolean? multisample_fast_a
    Int? buffer
    Boolean? phylip_out
  }
  command <<<
    kmer_db \
      ~{if defined(number_default_number) then ("-t " +  '"' + number_default_number + '"') else ""} \
      ~{if defined(length_kmers_default) then ("-k " +  '"' + length_kmers_default + '"') else ""} \
      ~{if defined(fraction_kmers_accepted) then ("-f " +  '"' + fraction_kmers_accepted + '"') else ""} \
      ~{if (multisample_fast_a) then "-multisample-fasta" else ""} \
      ~{if defined(buffer) then ("-buffer " +  '"' + buffer + '"') else ""} \
      ~{if (phylip_out) then "-phylip-out" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmer-db:1.7.6--he513fc3_0"
  }
  parameter_meta {
    number_default_number: "- number of threads (default: number of available cores),"
    length_kmers_default: "- length of k-mers (default: 18),"
    fraction_kmers_accepted: "- fraction of all k-mers to be accepted by the minhash filter (default: 1),"
    multisample_fast_a: "- each sequence in a genome FASTA file is treated as a separate sample."
    buffer: "- size of cache buffer in megabytes, applies to all2all mode\\n(use L3 size for Intel CPUs and L2 for AMD to maximize performance; default: 8)."
    phylip_out: "- store output distance matrix in a Phylip format"
  }
  output {
    File out_stdout = stdout()
  }
}