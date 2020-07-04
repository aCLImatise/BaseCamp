version 1.0

task DlcparSearch {
  input {
    String? stree
    String? s_map
    String? input_ext
    String? output_ext
    String? dup_cost
    String? loss_cost
    String? coal_cost
    Boolean? explicit
    Boolean? iterations__number
    Boolean? n_prescreen
    String? in_it_locus_tree
    String? seed
    Boolean? log
    String dlc_par_search
    String is
    String a
    String phylogenetic
    String program
    String for
  }
  command <<<
    dlcpar_search \
      ~{dlc_par_search} \
      ~{is} \
      ~{a} \
      ~{phylogenetic} \
      ~{program} \
      ~{for} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""} \
      ~{if defined(dup_cost) then ("--dupcost " +  '"' + dup_cost + '"') else ""} \
      ~{if defined(loss_cost) then ("--losscost " +  '"' + loss_cost + '"') else ""} \
      ~{if defined(coal_cost) then ("--coalcost " +  '"' + coal_cost + '"') else ""} \
      ~{true="--explicit" false="" explicit} \
      ~{true="-i" false="" iterations__number} \
      ~{true="--nprescreen" false="" n_prescreen} \
      ~{if defined(in_it_locus_tree) then ("--init-locus-tree " +  '"' + in_it_locus_tree + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    input_ext: "input file extension (default: \"\")"
    output_ext: "output file extension (default: \".dlcpar\")"
    dup_cost: "duplication cost (default: 1.0)"
    loss_cost: "loss cost (default: 1.0)"
    coal_cost: "deep coalescence cost (default: 0.5)"
    explicit: "set to ignore extra lineages at implied speciation nodes"
    iterations__number: "<# iterations>, --iter=<# iterations> number of search iterations (default: 10)"
    n_prescreen: "=<# prescreens> number of prescreening iterations (default: 20)"
    in_it_locus_tree: "initial locus tree for search"
    seed: "random number seed"
    log: "if given, output debugging log"
    dlc_par_search: ""
    is: ""
    a: ""
    phylogenetic: ""
    program: ""
    for: ""
  }
}