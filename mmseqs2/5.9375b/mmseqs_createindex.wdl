version 1.0

task MmseqsCreateindex {
  input {
    Boolean? kmer_size_range
    Boolean? alph_size
    Boolean? mask
    Boolean? spaced_km_er_mode
    Boolean? sensitivity_faster_fast
    Boolean? k_score
    Boolean? split
    Boolean? split_memory_limit
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? add_orf_stop
    Boolean? sub_mat
    Boolean? max_seqs
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createindex \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--mask" false="" mask} \
      ~{true="--spaced-kmer-mode" false="" spaced_km_er_mode} \
      ~{true="-s" false="" sensitivity_faster_fast} \
      ~{true="--k-score" false="" k_score} \
      ~{true="--split" false="" split} \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="--use-all-table-starts" false="" use_all_table_starts} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="--add-orf-stop" false="" add_orf_stop} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seqs" false="" max_seqs} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    alph_size: "21              alphabet size [2,21]                                        "
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking, 2: add both masked and unmasked sequences to index"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers "
    sensitivity_faster_fast: "7.500           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    k_score: "0               k-mer threshold for generating similar-k-mer lists          "
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value          "
    add_orf_stop: "false           add * at complete start and end                             "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}