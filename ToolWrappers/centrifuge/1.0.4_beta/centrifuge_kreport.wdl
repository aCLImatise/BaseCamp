version 1.0

task Centrifugekreport {
  input {
    String? required_centrifuge_index
    Boolean? no_lca
    Boolean? show_zeros
    File? is_count_table
    Int? min_score
    Int? min_length
  }
  command <<<
    centrifuge_kreport \
      ~{if defined(required_centrifuge_index) then ("-x " +  '"' + required_centrifuge_index + '"') else ""} \
      ~{if (no_lca) then "--no-lca" else ""} \
      ~{if (show_zeros) then "--show-zeros" else ""} \
      ~{if (is_count_table) then "--is-count-table" else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    required_centrifuge_index: "(REQUIRED) Centrifuge index"
    no_lca: "Do not report the LCA of multiple assignments, but report count fractions at the taxa."
    show_zeros: "Show clades that have zero reads, too"
    is_count_table: "The format of the file is 'taxID<tab>COUNT' instead of the standard\\nCentrifuge output format"
    min_score: "Require a minimum score for reads to be counted"
    min_length: "Require a minimum alignment length to the read"
  }
  output {
    File out_stdout = stdout()
    File out_is_count_table = "${in_is_count_table}"
  }
}