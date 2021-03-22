version 1.0

task Mirmachinetreeparserpy {
  input {
    Boolean? add_all_nodes
    Boolean? print_all_nodes
    String newick
    String keyword
  }
  command <<<
    mirmachine_tree_parser_py \
      ~{newick} \
      ~{keyword} \
      ~{if (add_all_nodes) then "--add-all-nodes" else ""} \
      ~{if (print_all_nodes) then "--print-all-nodes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirmachine:0.1.31--py_0"
  }
  parameter_meta {
    add_all_nodes: "Move on the tree both ways."
    print_all_nodes: "Print all available nodes and exit."
    newick: "A newick tree."
    keyword: "A keyword to gather node miRNAs (e.g. Homo)."
  }
  output {
    File out_stdout = stdout()
  }
}