version 1.0

task AllDists {
  input {
    Boolean? mod
    File? tree
    String tree_dot_nh
    Int? tree_three_dot_nh
  }
  command <<<
    all_dists \
      ~{tree_dot_nh} \
      ~{tree_three_dot_nh} \
      ~{if (mod) then "--mod" else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mod: "Read from tree model (*.mod) file(s) instead of Newick file."
    tree: "|<string>\\nUse leaf names from given tree.  Useful when primary files\\nuse numbers rather than names."
    tree_dot_nh: ""
    tree_three_dot_nh: ""
  }
  output {
    File out_stdout = stdout()
  }
}