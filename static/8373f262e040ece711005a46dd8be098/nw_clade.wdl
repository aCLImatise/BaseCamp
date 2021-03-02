version 1.0

task NwClade {
  input {
    Boolean? levels_int_give
    Boolean? only_prints_clade
    String? clade_defined_labels
    Boolean? prints_siblings_clade
  }
  command <<<
    nw_clade \
      ~{if (levels_int_give) then "-c" else ""} \
      ~{if (only_prints_clade) then "-m" else ""} \
      ~{if defined(clade_defined_labels) then ("-r " +  '"' + clade_defined_labels + '"') else ""} \
      ~{if (prints_siblings_clade) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    levels_int_give: "<levels (int)>: give context, i.e. start the subtree not at the last\\ncommon ancestor of the labels, but 'level' nodes higher (limited\\nby the tree's root, of course)."
    only_prints_clade: ": only prints the clade if it is monophyletic, in the sense that ONLY\\nthe labels passed as arguments are found in the clade.\\nSee also -s."
    clade_defined_labels: ": clade is defined by labels that match the regexp (instead.\\nof labels passed as arguments)"
    prints_siblings_clade: ": prints the siblings of the clade defined by the labels passed as\\narguments, in the order in which they appear in the Newick.\\nIf -m is also passed, only prints siblings if the labels passed\\nas arguments form a monophyletic group."
  }
  output {
    File out_stdout = stdout()
  }
}