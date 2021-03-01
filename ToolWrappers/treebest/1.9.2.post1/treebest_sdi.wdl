version 1.0

task TreebestSdi {
  input {
    Boolean? reroot
    Boolean? use_species_tree
    Boolean? reroot_minimizing_height
    Boolean? do_reorder_leaves
    File? species_tree
    File? cut_subtree_contains
    File? compare_topology_reorder
  }
  command <<<
    treebest sdi \
      ~{if (reroot) then "-r" else ""} \
      ~{if (use_species_tree) then "-c" else ""} \
      ~{if (reroot_minimizing_height) then "-H" else ""} \
      ~{if (do_reorder_leaves) then "-R" else ""} \
      ~{if defined(species_tree) then ("-s " +  '"' + species_tree + '"') else ""} \
      ~{if defined(cut_subtree_contains) then ("-l " +  '"' + cut_subtree_contains + '"') else ""} \
      ~{if defined(compare_topology_reorder) then ("-m " +  '"' + compare_topology_reorder + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reroot: "reroot"
    use_species_tree: "use core species tree instead of the default one"
    reroot_minimizing_height: "reroot by minimizing tree height, instead of by\\nminimizing the number of duplication events."
    do_reorder_leaves: "do not reorder the leaves."
    species_tree: "species tree [default taxa tree]"
    cut_subtree_contains: "cut a subtree that contains genes whose species exist in list [null]"
    compare_topology_reorder: "compare topology with FILE and re-order the leaves [null]"
  }
  output {
    File out_stdout = stdout()
  }
}