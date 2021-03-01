version 1.0

task RpprRefTree {
  input {
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? node_numbers
    Boolean? painted
    Boolean? rank_colored
    Boolean? help
    String ref_tree
  }
  command <<<
    rppr ref_tree \
      ~{ref_tree} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (painted) then "--painted" else ""} \
      ~{if (rank_colored) then "--rank-colored" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    painted: "Use a painted tree in place of the taxonomically annotated tree."
    rank_colored: "Include a tree for each rank with taxonomic annotations on every edge."
    help: "Display this list of options"
    ref_tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}