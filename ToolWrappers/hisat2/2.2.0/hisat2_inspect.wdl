version 1.0

task Hisat2inspect {
  input {
    Boolean? large_index
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
  }
  command <<<
    hisat2_inspect \
      ~{if (large_index) then "--large-index" else ""} \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{if (s_slash_summary) then "-s/--summary" else ""} \
      ~{if (n_slash_names) then "-n/--names" else ""} \
      ~{if (snp) then "--snp" else ""} \
      ~{if (ss) then "--ss" else ""} \
      ~{if (ss_all) then "--ss-all" else ""} \
      ~{if (exon) then "--exon" else ""} \
      ~{if (e_slash_ht_two_ref) then "-e/--ht2-ref" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    large_index: "force inspection of the 'large' index, even if a\\n'small' one is present."
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
  }
  output {
    File out_stdout = stdout()
  }
}