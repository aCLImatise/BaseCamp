version 1.0

task CbTool {
  input {
    Boolean? debug
    Boolean? fix_dots
    String? first
    String? del
    String mtx_two_tsv_vertical_line_mat_cat_vertical_line_meta_cat
  }
  command <<<
    cbTool \
      ~{mtx_two_tsv_vertical_line_mat_cat_vertical_line_meta_cat} \
      ~{true="--debug" false="" debug} \
      ~{true="--fixDots" false="" fix_dots} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(del) then ("--del " +  '"' + del + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    fix_dots: "try to fix R's mangling of various special chars to '.' in the cell IDs"
    first: "only for metaCat: names of fields to order first, comma- sep, e.g. disease,age. Not cellId, that's always the first field"
    del: "only for metaCat: names of fields to remove"
    mtx_two_tsv_vertical_line_mat_cat_vertical_line_meta_cat: ""
  }
}