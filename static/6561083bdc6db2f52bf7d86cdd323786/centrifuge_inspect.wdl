version 1.0

task CentrifugeInspect {
  input {
    Int? a_slash_across
    Boolean? n_slash_names
    Boolean? s_slash_summary
    Boolean? e_slash_bt_two_ref
    String? conversion_table
    Boolean? taxonomy_tree
    Boolean? name_table
    Boolean? size_table
    Boolean? v_slash_verbose
    Boolean? h_slash_help
  }
  command <<<
    centrifuge-inspect \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{true="-n/--names" false="" n_slash_names} \
      ~{true="-s/--summary" false="" s_slash_summary} \
      ~{true="-e/--bt2-ref" false="" e_slash_bt_two_ref} \
      ~{if defined(conversion_table) then ("--conversion-table " +  '"' + conversion_table + '"') else ""} \
      ~{true="--taxonomy-tree" false="" taxonomy_tree} \
      ~{true="--name-table" false="" name_table} \
      ~{true="--size-table" false="" size_table} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    a_slash_across: "Number of characters across in FASTA output (default: 60)"
    n_slash_names: "Print reference sequence names only"
    s_slash_summary: "Print summary incl. ref names, lengths, index properties"
    e_slash_bt_two_ref: "Reconstruct reference from .cf (slow, preserves colors)"
    conversion_table: "conversion table"
    taxonomy_tree: "Print taxonomy tree"
    name_table: "Print names corresponding to taxonomic IDs"
    size_table: "Print the lengths of the sequences belonging to the same taxonomic ID"
    v_slash_verbose: "Verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
  }
}