version 1.0

task Showaligns {
  input {
    Boolean? sort_alignments_query
    Boolean? sort_alignments_reference
    Int? set_screen_width
    Int? set_matrix_type
    String delta_file
    String ref_id
    String qry_id
  }
  command <<<
    show_aligns \
      ~{delta_file} \
      ~{ref_id} \
      ~{qry_id} \
      ~{if (sort_alignments_query) then "-q" else ""} \
      ~{if (sort_alignments_reference) then "-r" else ""} \
      ~{if defined(set_screen_width) then ("-w " +  '"' + set_screen_width + '"') else ""} \
      ~{if defined(set_matrix_type) then ("-x " +  '"' + set_matrix_type + '"') else ""}
  >>>
  parameter_meta {
    sort_alignments_query: "Sort alignments by the query start coordinate"
    sort_alignments_reference: "Sort alignments by the reference start coordinate"
    set_screen_width: "Set the screen width - default is 60"
    set_matrix_type: "Set the matrix type - default is 2 (BLOSUM 62),\\nother options include 1 (BLOSUM 45) and 3 (BLOSUM 80)\\nnote: only has effect on amino acid alignments"
    delta_file: ""
    ref_id: ""
    qry_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}