version 1.0

task Treeeventsdlc {
  input {
    String? stree
    Int? s_map
    File? tree_ext
    File? reco_next
    Boolean? use_f_amid
    String nodes
  }
  command <<<
    tree_events_dlc \
      ~{nodes} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(tree_ext) then ("--treeext " +  '"' + tree_ext + '"') else ""} \
      ~{if defined(reco_next) then ("--reconext " +  '"' + reco_next + '"') else ""} \
      ~{if (use_f_amid) then "--use-famid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree (newick format)"
    s_map: "mapping of gene names to species names"
    tree_ext: "tree file extension (default: \\\".coal.tree\\\")"
    reco_next: "tree file extension (default: \\\".coal.recon\\\")"
    use_f_amid: "set to ignore extra lineages at implied speciation"
    nodes: "--use-locus-recon     if set, use locus recon rather than MPR"
  }
  output {
    File out_stdout = stdout()
  }
}