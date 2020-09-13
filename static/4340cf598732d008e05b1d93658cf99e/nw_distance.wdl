version 1.0

task NwDistance {
  input {
    String? selects_mode_see
    Boolean? prints_labels_empty
    String? where_selection_determined
    Boolean? matrix_mode_print
  }
  command <<<
    nw_distance \
      ~{if defined(selects_mode_see) then ("-m " +  '"' + selects_mode_see + '"') else ""} \
      ~{if (prints_labels_empty) then "-n" else ""} \
      ~{if defined(where_selection_determined) then ("-s " +  '"' + where_selection_determined + '"') else ""} \
      ~{if (matrix_mode_print) then "-t" else ""}
  >>>
  parameter_meta {
    selects_mode_see: ": selects mode (see Output). Mode is determined by the first\\nletter of the argument: 'r' for root mode (default), 'l' for LCA,\\n'p' for parent, and 'm' for matrix. Thus, '-mm', '-m matrix',\\nand '-m mat' all select matrix mode."
    prints_labels_empty: ": prints labels (or '' if empty) in addition to distances."
    where_selection_determined: ", where selection is determined by the first letter of\\nthe argument: 'a' for all nodes, 'l' for labeled nodes,\\n'i' for inner nodes, 'f' for leaves.\\nE.g. '-s a' and '-s all' both select all nodes."
    matrix_mode_print: ": in matrix mode, print a triangular matrix. In other modes,\\nprint values on a line, separated by TABs."
  }
  output {
    File out_stdout = stdout()
  }
}