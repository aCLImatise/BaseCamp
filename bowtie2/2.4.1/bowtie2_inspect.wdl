version 1.0

task Bowtie2Inspect {
  input {
    Boolean? large_index
    Boolean? debug
    Boolean? sanitized
    Boolean? verbose
    Int? a_slash_across
    Boolean? n_slash_names
    Boolean? s_slash_summary
    Boolean? v_slash_verbose
    Boolean? h_slash_help
  }
  command <<<
    bowtie2-inspect \
      ~{true="--large-index" false="" large_index} \
      ~{true="--debug" false="" debug} \
      ~{true="--sanitized" false="" sanitized} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{true="-n/--names" false="" n_slash_names} \
      ~{true="-s/--summary" false="" s_slash_summary} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    large_index: "force inspection of the 'large' index, even if a 'small' one is present."
    debug: "use the debug binary; slower, assertions enabled"
    sanitized: "use sanitized binary; slower, uses ASan and/or UBSan"
    verbose: "log the issued command"
    a_slash_across: "Number of characters across in FASTA output (default: 60)"
    n_slash_names: "Print reference sequence names only"
    s_slash_summary: "Print summary incl. ref names, lengths, index properties"
    v_slash_verbose: "Verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
  }
}