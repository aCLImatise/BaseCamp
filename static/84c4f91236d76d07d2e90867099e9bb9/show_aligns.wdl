version 1.0

task Showaligns {
  input {
    Boolean? sort_alignments_query
    Boolean? sort_alignments_reference
    Int? set_screen_width
    Boolean? colorize_bases_output
    Int? set_matrix_type
    Int? space_markers_default
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
      ~{if (colorize_bases_output) then "-c" else ""} \
      ~{if defined(set_matrix_type) then ("-x " +  '"' + set_matrix_type + '"') else ""} \
      ~{if defined(space_markers_default) then ("-m " +  '"' + space_markers_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_alignments_query: "Sort alignments by the query start coordinate"
    sort_alignments_reference: "Sort alignments by the reference start coordinate"
    set_screen_width: "Set the screen width - default is terminal width"
    colorize_bases_output: "Colorize bases on output"
    set_matrix_type: "Set the matrix type - default is 2 (BLOSUM 62)"
    space_markers_default: "Space between markers - default is 10, disable with 0\\nother options include 1 (BLOSUM 45) and 3 (BLOSUM 80)\\nnote: only has effect on amino acid alignments"
    delta_file: ""
    ref_id: ""
    qry_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}