version 1.0

task DlcparSearch {
  input {
    File? stree
    String? s_map
    File? input_ext
    File? output_ext
    Float? dup_cost
    Float? loss_cost
    Float? coal_cost
    Boolean? explicit
    Boolean? iterations__iterationsnumber
    Boolean? n_prescreen
    File? in_it_locus_tree
    Int? seed
    Boolean? log
    String nodes
  }
  command <<<
    dlcpar_search \
      ~{nodes} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""} \
      ~{if defined(dup_cost) then ("--dupcost " +  '"' + dup_cost + '"') else ""} \
      ~{if defined(loss_cost) then ("--losscost " +  '"' + loss_cost + '"') else ""} \
      ~{if defined(coal_cost) then ("--coalcost " +  '"' + coal_cost + '"') else ""} \
      ~{if (explicit) then "--explicit" else ""} \
      ~{if (iterations__iterationsnumber) then "-i" else ""} \
      ~{if (n_prescreen) then "--nprescreen" else ""} \
      ~{if defined(in_it_locus_tree) then ("--init-locus-tree " +  '"' + in_it_locus_tree + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    input_ext: "input file extension (default: \\\"\\\")"
    output_ext: "output file extension (default: \\\".dlcpar\\\")"
    dup_cost: "duplication cost (default: 1.0)"
    loss_cost: "loss cost (default: 1.0)"
    coal_cost: "deep coalescence cost (default: 0.5)"
    explicit: "set to ignore extra lineages at implied speciation"
    iterations__iterationsnumber: "<# iterations>, --iter=<# iterations>\\nnumber of search iterations (default: 10)"
    n_prescreen: "=<# prescreens>\\nnumber of prescreening iterations (default: 20)"
    in_it_locus_tree: "initial locus tree for search"
    seed: "random number seed"
    log: "if given, output debugging log"
    nodes: "Search:"
  }
  output {
    File out_stdout = stdout()
    File out_output_ext = "${in_output_ext}"
  }
}