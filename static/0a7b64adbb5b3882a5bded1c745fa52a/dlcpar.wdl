version 1.0

task Dlcpar {
  input {
    File? stree
    String? s_map
    String? l_map
    Int? n_samples
    File? input_ext
    File? output_ext
    Float? dup_cost
    Float? loss_cost
    Float? coal_cost
    Boolean? no_prescreen
    Int? prescreen_min
    Int? prescreen_factor
    Boolean? max_loci
    Boolean? max_dups
    Boolean? max_losses
    Boolean? allow_both
    Int? seed
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
      ~{if (no_prescreen) then "--no_prescreen" else ""} \
      ~{if defined(prescreen_min) then ("--prescreen_min " +  '"' + prescreen_min + '"') else ""} \
      ~{if defined(prescreen_factor) then ("--prescreen_factor " +  '"' + prescreen_factor + '"') else ""} \
      ~{if (max_loci) then "--max_loci" else ""} \
      ~{if (max_dups) then "--max_dups" else ""} \
      ~{if (max_losses) then "--max_losses" else ""} \
      ~{if (allow_both) then "--allow_both" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (output_format) then "--output_format" else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stree: "species tree file in newick format"
    s_map: "gene to species map"
    l_map: "gene to locus map (species-specific)"
    n_samples: "number of uniform samples (default: 1)"
    input_ext: "input file extension (default: \\\"\\\")"
    output_ext: "output file extension (default: \\\".dlcpar\\\")"
    dup_cost: "duplication cost (default: 1.0)"
    loss_cost: "loss cost (default: 1.0)"
    coal_cost: "deep coalescence cost (default: 0.5)"
    no_prescreen: "set to disable prescreen of locus maps"
    prescreen_min: "prescreen locus maps if min (forward) cost exceeds\\nthis value (default: 50)"
    prescreen_factor: "prescreen locus maps if (forward) cost exceeds this\\nfactor * min (forward) cost (default: 10)"
    max_loci: "=<max # of loci>\\nmaximum # of co-existing loci (in each ancestral\\nspecies), set to -1 for no limit (default: -1)"
    max_dups: "=<max # of dups>\\nmaximum # of duplications (in each ancestral species),\\nset to -1 for no limit (default: 4)"
    max_losses: "=<max # of losses>\\nmaximum # of losses (in each ancestral species), set\\nto -1 for no limit (default: 4)"
    allow_both: "set to allow duplications on both children"
    seed: "random number seed"
    output_format: "=[dlcpar|dlcoal]\\nspecify output format (default: dlcpar)"
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
  output {
    File out_stdout = stdout()
    File out_output_ext = "${in_output_ext}"
  }
}