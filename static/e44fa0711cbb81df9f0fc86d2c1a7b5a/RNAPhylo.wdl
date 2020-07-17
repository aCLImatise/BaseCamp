version 1.0

task RNAPhylo {
  input {
    String? _phylogeny_tree
    String? phylogenetic_model_single
    String? phylogenetic_model_paired
    String? scfg_grammar_file
    Boolean? float_lower_bound
    Boolean? partition
    String? in_format
    Boolean? degen_is_absent
    Boolean? fragmentary
    Boolean? only_ss_cons
    String? gap_thresh
    Int? partition_close_to_fuzzy_limit
    Int? suspicious_degen_n_ucs
    Boolean? ignore_all_gap
    String alignment
  }
  command <<<
    RNAPhylo \
      ~{alignment} \
      ~{if defined(_phylogeny_tree) then ("-t " +  '"' + _phylogeny_tree + '"') else ""} \
      ~{if defined(phylogenetic_model_single) then ("-s " +  '"' + phylogenetic_model_single + '"') else ""} \
      ~{if defined(phylogenetic_model_paired) then ("-p " +  '"' + phylogenetic_model_paired + '"') else ""} \
      ~{if defined(scfg_grammar_file) then ("-g " +  '"' + scfg_grammar_file + '"') else ""} \
      ~{true="--l" false="" float_lower_bound} \
      ~{true="--partition" false="" partition} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--degen-is-absent" false="" degen_is_absent} \
      ~{true="--fragmentary" false="" fragmentary} \
      ~{true="--only-ss-cons" false="" only_ss_cons} \
      ~{if defined(gap_thresh) then ("--gap-thresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(partition_close_to_fuzzy_limit) then ("--partition-close-to-fuzzy-limit " +  '"' + partition_close_to_fuzzy_limit + '"') else ""} \
      ~{if defined(suspicious_degen_n_ucs) then ("--suspicious-degen-nucs " +  '"' + suspicious_degen_n_ucs + '"') else ""} \
      ~{true="--ignore-all-gap" false="" ignore_all_gap}
  >>>
  parameter_meta {
    _phylogeny_tree: ": The phylogeny tree "
    phylogenetic_model_single: ": The phylogenetic model for single bases "
    phylogenetic_model_paired: ": The phylogenetic model for paired bases "
    scfg_grammar_file: ": The SCFG grammar file. "
    float_lower_bound: "<float> : The lower bound for paired emission probability to be interesting "
    partition: ": Use partition function "
    in_format: ": The format of input alignment "
    degen_is_absent: ": model degenerate nucleotides as absent"
    fragmentary: ": model fragmentary (or equivalently truncated) sequences (implies --degen-is-absent)"
    only_ss_cons: ": only allow emission of base pairs in SS_cons (to test this aspect of --fragmentary)"
    gap_thresh: ": gap threshold for removing columns.  --gap-thresh 1 means retain all columns.  Default: 0.7"
    partition_close_to_fuzzy_limit: ": \"fuzzy\" nucleotide positions are those that are on the edge of                                          a truncation, or have a suspicious number of degenerate nucleotides (see --suspicious-degen-nucs).                                      When a nucleotide is within <int> nucleotides of a fuzzy position, the partition function cannot                                        be calculated on it, as if the nucleotide were absent.  This flag is meaningless unless --partition is                                          also used.  A value of -1 disables this feature.  Default: -1.  Recommend 3 if you use it."
    suspicious_degen_n_ucs: ": when there are <int> or more consecutive degenerate nucleotides                                         they are considered suspicious (see --partition-close-to-fuzzy-limit)                                   Default: 2."
    ignore_all_gap: ": don't complain about alignments containing columns with no nucleotides"
    alignment: ""
  }
}