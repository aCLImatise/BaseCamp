version 1.0

task RNAPhylo {
  input {
    String? _phylogeny_tree
    File? phylogenetic_model_single
    File? phylogenetic_model_paired
    File? _scfg_file
    Boolean? float_lower_bound
    Boolean? partition
    String? in_format
    Boolean? degen_is_absent
    Boolean? fragmentary
    Boolean? only_ss_cons
    Float? gap_thresh
    Int? partition_close_to_fuzzy_limit
    Int? suspicious_degen_n_ucs
    Boolean? ignore_all_gap
  }
  command <<<
    RNAPhylo \
      ~{if defined(_phylogeny_tree) then ("-t " +  '"' + _phylogeny_tree + '"') else ""} \
      ~{if defined(phylogenetic_model_single) then ("-s " +  '"' + phylogenetic_model_single + '"') else ""} \
      ~{if defined(phylogenetic_model_paired) then ("-p " +  '"' + phylogenetic_model_paired + '"') else ""} \
      ~{if defined(_scfg_file) then ("-g " +  '"' + _scfg_file + '"') else ""} \
      ~{if (float_lower_bound) then "--l" else ""} \
      ~{if (partition) then "--partition" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (degen_is_absent) then "--degen-is-absent" else ""} \
      ~{if (fragmentary) then "--fragmentary" else ""} \
      ~{if (only_ss_cons) then "--only-ss-cons" else ""} \
      ~{if defined(gap_thresh) then ("--gap-thresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(partition_close_to_fuzzy_limit) then ("--partition-close-to-fuzzy-limit " +  '"' + partition_close_to_fuzzy_limit + '"') else ""} \
      ~{if defined(suspicious_degen_n_ucs) then ("--suspicious-degen-nucs " +  '"' + suspicious_degen_n_ucs + '"') else ""} \
      ~{if (ignore_all_gap) then "--ignore-all-gap" else ""}
  >>>
  parameter_meta {
    _phylogeny_tree: ": The phylogeny tree"
    phylogenetic_model_single: ": The phylogenetic model for single bases"
    phylogenetic_model_paired: ": The phylogenetic model for paired bases"
    _scfg_file: ": The SCFG grammar file."
    float_lower_bound: "<float> : The lower bound for paired emission probability to be interesting"
    partition: ": Use partition function"
    in_format: ": The format of input alignment"
    degen_is_absent: ": model degenerate nucleotides as absent"
    fragmentary: ": model fragmentary (or equivalently truncated) sequences (implies --degen-is-absent)"
    only_ss_cons: ": only allow emission of base pairs in SS_cons (to test this aspect of --fragmentary)"
    gap_thresh: ": gap threshold for removing columns.  --gap-thresh 1 means retain all columns.  Default: 0.7"
    partition_close_to_fuzzy_limit: ": \\\"fuzzy\\\" nucleotide positions are those that are on the edge of                                          a truncation, or have a suspicious number of degenerate nucleotides (see --suspicious-degen-nucs).                                      When a nucleotide is within <int> nucleotides of a fuzzy position, the partition function cannot                                        be calculated on it, as if the nucleotide were absent.  This flag is meaningless unless --partition is                                          also used.  A value of -1 disables this feature.  Default: -1.  Recommend 3 if you use it."
    suspicious_degen_n_ucs: ": when there are <int> or more consecutive degenerate nucleotides                                         they are considered suspicious (see --partition-close-to-fuzzy-limit)                                   Default: 2."
    ignore_all_gap: ": don't complain about alignments containing columns with no nucleotides"
  }
  output {
    File out_stdout = stdout()
  }
}