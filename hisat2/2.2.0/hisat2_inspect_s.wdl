version 1.0

task Hisat2InspectS {
  input {
    Int? a_slash_across
    Boolean? s_slash_summary
    Boolean? n_slash_names
    Boolean? snp
    Boolean? ss
    Boolean? ss_all
    Boolean? exon
    Boolean? e_slash_ht_two_ref
    Boolean? v_slash_verbose
    Boolean? h_slash_help
    String his_at_two_inspect
  }
  command <<<
    hisat2-inspect-s \
      ~{his_at_two_inspect} \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{true="-s/--summary" false="" s_slash_summary} \
      ~{true="-n/--names" false="" n_slash_names} \
      ~{true="--snp" false="" snp} \
      ~{true="--ss" false="" ss} \
      ~{true="--ss-all" false="" ss_all} \
      ~{true="--exon" false="" exon} \
      ~{true="-e/--ht2-ref" false="" e_slash_ht_two_ref} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    a_slash_across: "Number of characters across in FASTA output (default: 60)"
    s_slash_summary: "Print summary incl. ref names, lengths, index properties"
    n_slash_names: "Print reference sequence names only"
    snp: "Print SNPs"
    ss: "Print splice sites"
    ss_all: "Print splice sites including those not in the global index"
    exon: "Print exons"
    e_slash_ht_two_ref: "Reconstruct reference from .ht2 (slow, preserves colors)"
    v_slash_verbose: "Verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    his_at_two_inspect: ""
  }
}