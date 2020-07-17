version 1.0

task CentrifugeKreport {
  input {
    String? required_centrifuge_index
    Boolean? no_lca
    Boolean? show_zeros
    Boolean? is_count_table
    String? min_score
    Int? min_length
  }
  command <<<
    centrifuge-kreport \
      ~{if defined(required_centrifuge_index) then ("-x " +  '"' + required_centrifuge_index + '"') else ""} \
      ~{true="--no-lca" false="" no_lca} \
      ~{true="--show-zeros" false="" show_zeros} \
      ~{true="--is-count-table" false="" is_count_table} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    required_centrifuge_index: "(REQUIRED) Centrifuge index"
    no_lca: "Do not report the LCA of multiple assignments, but report count fractions at the taxa."
    show_zeros: "Show clades that have zero reads, too"
    is_count_table: "The format of the file is 'taxID<tab>COUNT' instead of the standard Centrifuge output format"
    min_score: "Require a minimum score for reads to be counted"
    min_length: "Require a minimum alignment length to the read"
  }
}