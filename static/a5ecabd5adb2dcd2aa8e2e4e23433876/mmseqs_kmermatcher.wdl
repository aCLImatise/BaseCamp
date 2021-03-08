version 1.0

task MmseqsKmermatcher {
  input {
    Int? alph_size
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    Int? mask
    Int? mask_lower_case
    Int? kmer_length_set
    Int? split_memory_limit
    Float? min_seq_id
    Int? cov_mode
    Float? list_matches_fraction
    Int? km_er_per_seq
    Int? km_er_per_seq_scale
    Boolean? adjust_km_er_len
    Int? hash_shift
    Boolean? include_only_extendable
    Boolean? ignore_multi_km_er
    File? sub_mat
    Int? max_seq_len
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs kmermatcher \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if defined(adjust_km_er_len) then ("--adjust-kmer-len " +  '"' + adjust_km_er_len + '"') else ""} \
      ~{if defined(hash_shift) then ("--hash-shift " +  '"' + hash_shift + '"') else ""} \
      ~{if defined(include_only_extendable) then ("--include-only-extendable " +  '"' + include_only_extendable + '"') else ""} \
      ~{if defined(ignore_multi_km_er) then ("--ignore-multi-kmer " +  '"' + ignore_multi_km_er + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    alph_size: "Alphabet size (range 2-21) [nucl:5,aa:13]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [0]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    mask: "Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low complexity masking [0]"
    mask_lower_case: "Lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    kmer_length_set: "k-mer length (0: automatically set to optimum) [0]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.800]"
    km_er_per_seq: "k-mers per sequence [0]"
    km_er_per_seq_scale: "Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [nucl:0.200,aa:0.000]"
    adjust_km_er_len: "Adjust k-mer length based on specificity (only for nucleotides) [0]"
    hash_shift: "Shift k-mer hash initialization [67]"
    include_only_extendable: "Include only extendable [0]"
    ignore_multi_km_er: "Skip k-mers occurring multiple times (>=2) [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}