version 1.0

task Treeeventsdlcpar {
  input {
    File? stree
    String? s_map
    String? l_map
    File? tree_ext
    Boolean? use_f_amid
  }
  command <<<
    tree_events_dlcpar \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(l_map) then ("--lmap " +  '"' + l_map + '"') else ""} \
      ~{if defined(tree_ext) then ("--treeext " +  '"' + tree_ext + '"') else ""} \
      ~{if (use_f_amid) then "--use-famid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    l_map: "gene to locus map (species-specific)"
    tree_ext: "tree file extension (default: \\\".tree\\\")"
    use_f_amid: "set to ignore extra lineages at implied speciation\\nnodes\\n"
  }
  output {
    File out_stdout = stdout()
  }
}