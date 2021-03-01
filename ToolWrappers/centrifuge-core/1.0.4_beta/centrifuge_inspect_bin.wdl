version 1.0

task Centrifugeinspectbin {
  input {
    Int? across
    Boolean? names
    Boolean? summary
    Boolean? bt_two_ref
    String? conversion_table
    Boolean? taxonomy_tree
    Boolean? name_table
    Boolean? size_table
    Boolean? verbose
    String centrifuge_inspect
  }
  command <<<
    centrifuge_inspect_bin \
      ~{centrifuge_inspect} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (bt_two_ref) then "--bt2-ref" else ""} \
      ~{if defined(conversion_table) then ("--conversion-table " +  '"' + conversion_table + '"') else ""} \
      ~{if (taxonomy_tree) then "--taxonomy-tree" else ""} \
      ~{if (name_table) then "--name-table" else ""} \
      ~{if (size_table) then "--size-table" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0"
  }
  parameter_meta {
    across: "Number of characters across in FASTA output (default: 60)"
    names: "Print reference sequence names only"
    summary: "Print summary incl. ref names, lengths, index properties"
    bt_two_ref: "Reconstruct reference from .cf (slow, preserves colors)"
    conversion_table: "conversion table"
    taxonomy_tree: "Print taxonomy tree"
    name_table: "Print names corresponding to taxonomic IDs"
    size_table: "Print the lengths of the sequences belonging to the same taxonomic ID"
    verbose: "Verbose output (for debugging)"
    centrifuge_inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}