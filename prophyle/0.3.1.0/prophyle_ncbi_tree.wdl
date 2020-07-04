version 1.0

task ProphyleNcbiTree.py {
  input {
    String? log_file
    String? build_reduced_tree
    String? root_tree_bacteria
  }
  command <<<
    prophyle_ncbi_tree.py \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""} \
      ~{if defined(build_reduced_tree) then ("-r " +  '"' + build_reduced_tree + '"') else ""} \
      ~{if defined(root_tree_bacteria) then ("-u " +  '"' + root_tree_bacteria + '"') else ""}
  >>>
  parameter_meta {
    log_file: "log file [stderr]"
    build_reduced_tree: "build reduced tree (one sequence every n)"
    root_tree_bacteria: "root of the tree (e.g. Bacteria); will exclude sequences which are not its descendants"
  }
}