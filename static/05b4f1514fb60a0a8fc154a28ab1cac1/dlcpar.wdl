version 1.0

task Dlcpar {
  input {
    String? stree
    String? s_map
    String? l_map
    String? n_samples
    String? input_ext
    String? output_ext
    String? dup_cost
    String? loss_cost
    String? coal_cost
    Boolean? no_prescreen
    String? prescreen_min
    String? prescreen_factor
    Boolean? max_loci
    Boolean? max_dups
    Boolean? max_losses
    Boolean? allow_both
    String? seed
    Boolean? output_format
    Boolean? log
    String dlc_par
    String is
    String a
    String phylogenetic
    String program
    String for
    String finding
    String the
    String most
    String parsimonious
    String gene
    String tree
  }
  command <<<
    dlcpar \
      ~{dlc_par} \
      ~{is} \
      ~{a} \
      ~{phylogenetic} \
      ~{program} \
      ~{for} \
      ~{finding} \
      ~{the} \
      ~{most} \
      ~{parsimonious} \
      ~{gene} \
      ~{tree} \
      ~{if defined(stree) then ("--stree " +  '"' + stree + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if defined(l_map) then ("--lmap " +  '"' + l_map + '"') else ""} \
      ~{if defined(n_samples) then ("--nsamples " +  '"' + n_samples + '"') else ""} \
      ~{if defined(input_ext) then ("--inputext " +  '"' + input_ext + '"') else ""} \
      ~{if defined(output_ext) then ("--outputext " +  '"' + output_ext + '"') else ""} \
      ~{if defined(dup_cost) then ("--dupcost " +  '"' + dup_cost + '"') else ""} \
      ~{if defined(loss_cost) then ("--losscost " +  '"' + loss_cost + '"') else ""} \
      ~{if defined(coal_cost) then ("--coalcost " +  '"' + coal_cost + '"') else ""} \
      ~{true="--no_prescreen" false="" no_prescreen} \
      ~{if defined(prescreen_min) then ("--prescreen_min " +  '"' + prescreen_min + '"') else ""} \
      ~{if defined(prescreen_factor) then ("--prescreen_factor " +  '"' + prescreen_factor + '"') else ""} \
      ~{true="--max_loci" false="" max_loci} \
      ~{true="--max_dups" false="" max_dups} \
      ~{true="--max_losses" false="" max_losses} \
      ~{true="--allow_both" false="" allow_both} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--output_format" false="" output_format} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    l_map: "gene to locus map (species-specific)"
    n_samples: "number of uniform samples (default: 1)"
    input_ext: "input file extension (default: \"\")"
    output_ext: "output file extension (default: \".dlcpar\")"
    dup_cost: "duplication cost (default: 1.0)"
    loss_cost: "loss cost (default: 1.0)"
    coal_cost: "deep coalescence cost (default: 0.5)"
    no_prescreen: "set to disable prescreen of locus maps"
    prescreen_min: "prescreen locus maps if min (forward) cost exceeds this value (default: 50)"
    prescreen_factor: "prescreen locus maps if (forward) cost exceeds this factor * min (forward) cost (default: 10)"
    max_loci: "=<max # of loci> maximum # of co-existing loci (in each ancestral species), set to -1 for no limit (default: -1)"
    max_dups: "=<max # of dups> maximum # of duplications (in each ancestral species), set to -1 for no limit (default: 4)"
    max_losses: "=<max # of losses> maximum # of losses (in each ancestral species), set to -1 for no limit (default: 4)"
    allow_both: "set to allow duplications on both children"
    seed: "random number seed"
    output_format: "=[dlcpar|dlcoal] specify output format (default: dlcpar)"
    log: "if given, output debugging log"
    dlc_par: ""
    is: ""
    a: ""
    phylogenetic: ""
    program: ""
    for: ""
    finding: ""
    the: ""
    most: ""
    parsimonious: ""
    gene: ""
    tree: ""
  }
}