version 1.0

task ProphyleNcbiTreepy {
  input {
    File? log_file
    String? build_reduced_tree
    String? root_tree_eg
  }
  command <<<
    prophyle_ncbi_tree_py \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""} \
      ~{if defined(build_reduced_tree) then ("-r " +  '"' + build_reduced_tree + '"') else ""} \
      ~{if defined(root_tree_eg) then ("-u " +  '"' + root_tree_eg + '"') else ""}
  >>>
  parameter_meta {
    log_file: "log file [stderr]"
    build_reduced_tree: "build reduced tree (one sequence every n)"
    root_tree_eg: "root of the tree (e.g. Bacteria); will exclude sequences\\nwhich are not its descendants\\n"
  }
  output {
    File out_stdout = stdout()
  }
}