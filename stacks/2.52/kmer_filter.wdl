version 1.0

task KmerFilter {
  input {
    Boolean? rare
    Boolean? abundant
    String? k_len
    String? max_k_freq
    String? min_lim
    String? max_lim
    String? normalize
    Boolean? write_k_freq
    Boolean? k_dist
    File? read_k_freq
  }
  command <<<
    kmer_filter \
      ~{true="--rare" false="" rare} \
      ~{true="--abundant" false="" abundant} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{if defined(max_k_freq) then ("--max-k-freq " +  '"' + max_k_freq + '"') else ""} \
      ~{if defined(min_lim) then ("--min-lim " +  '"' + min_lim + '"') else ""} \
      ~{if defined(max_lim) then ("--max-lim " +  '"' + max_lim + '"') else ""} \
      ~{if defined(normalize) then ("--normalize " +  '"' + normalize + '"') else ""} \
      ~{true="--write-k-freq" false="" write_k_freq} \
      ~{true="--k-dist" false="" k_dist} \
      ~{if defined(read_k_freq) then ("--read-k-freq " +  '"' + read_k_freq + '"') else ""}
  >>>
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
}