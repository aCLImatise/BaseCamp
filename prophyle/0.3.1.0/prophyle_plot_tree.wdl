version 1.0

task ProphylePlotTree.py {
  input {
    String aA
  }
  command <<<
    prophyle_plot_tree.py \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}