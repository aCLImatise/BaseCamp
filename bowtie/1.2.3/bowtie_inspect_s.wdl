version 1.0

task BowtieInspectS {
  input {
    Int? a_slash_across
    Boolean? n_slash_names
    Boolean? s_slash_summary
    Boolean? e_slash_e_bwt_ref
    Boolean? v_slash_verbose
    Boolean? h_slash_help
    String bowtie_inspect
  }
  command <<<
    bowtie-inspect-s \
      ~{bowtie_inspect} \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{true="-n/--names" false="" n_slash_names} \
      ~{true="-s/--summary" false="" s_slash_summary} \
      ~{true="-e/--ebwt-ref" false="" e_slash_e_bwt_ref} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    a_slash_across: "Number of characters across in FASTA output (default: 60)"
    n_slash_names: "Print reference sequence names only"
    s_slash_summary: "Print summary incl. ref names, lengths, index properties"
    e_slash_e_bwt_ref: "Reconstruct reference from ebwt (slow, preserves colors)"
    v_slash_verbose: "Verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    bowtie_inspect: ""
  }
}