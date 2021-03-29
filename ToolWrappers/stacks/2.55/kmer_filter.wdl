version 1.0

task KmerFilter {
  input {
    Boolean? rare
    Boolean? abundant
    Int? k_len
    Int? max_k_freq
    Int? min_lim
    Int? max_lim
    String? normalize
    Boolean? write_k_freq
    Boolean? k_dist
    File? read_k_freq
  }
  command <<<
    kmer_filter \
      ~{if (rare) then "--rare" else ""} \
      ~{if (abundant) then "--abundant" else ""} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{if defined(max_k_freq) then ("--max-k-freq " +  '"' + max_k_freq + '"') else ""} \
      ~{if defined(min_lim) then ("--min-lim " +  '"' + min_lim + '"') else ""} \
      ~{if defined(max_lim) then ("--max-lim " +  '"' + max_lim + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{if (write_k_freq) then "--write-k-freq" else ""} \
      ~{if (k_dist) then "--k-dist" else ""} \
      ~{if defined(read_k_freq) then ("--read-k-freq " +  '"' + read_k_freq + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  parameter_meta {
    rare: ": turn on filtering based on rare k-mers."
    abundant: ": turn on filtering based on abundant k-mers."
    k_len: ": specify k-mer size (default 15)."
    max_k_freq: ": specify the number of times a kmer must occur to be considered abundant (default 20,000)."
    min_lim: ": specify number of rare kmers occuring in a row required to discard a read (default 80% of the k-mer length)."
    max_lim: ": specify number of abundant kmers required to discard a read (default 80% of the k-mers in a read)."
    normalize: ": normalize read depth according to k-mer coverage."
    write_k_freq: ": write kmers along with their frequency of occurrence and exit."
    k_dist: ": print k-mer frequency distribution and exit."
    read_k_freq: ": read a set of kmers along with their frequencies of occurrence instead of reading raw input files."
  }
  output {
    File out_stdout = stdout()
  }
}