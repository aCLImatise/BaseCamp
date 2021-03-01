version 1.0

task RpprRppr {
  input {
    String rp_pr
    String convex_tax_ids
    String convex_if_y
    String infer
    String info
    String min_a_dcl
    String min_a_dcl_tree
    String pd_prune
    String prep_db
    String prep_sim
    String re_class
    String ref_tree
    String re_root
  }
  command <<<
    rppr rppr \
      ~{rp_pr} \
      ~{convex_tax_ids} \
      ~{convex_if_y} \
      ~{infer} \
      ~{info} \
      ~{min_a_dcl} \
      ~{min_a_dcl_tree} \
      ~{pd_prune} \
      ~{prep_db} \
      ~{prep_sim} \
      ~{re_class} \
      ~{ref_tree} \
      ~{re_root}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rp_pr: "check          checks a reference package"
    convex_tax_ids: "determines convex tax_ids per-rank in a refpkg"
    convex_if_y: "identifies minimal leaf set to cut for taxonomic concordance"
    infer: "infers classifications of unclassified sequences in a reference package"
    info: "gives information about a reference package"
    min_a_dcl: "finds a good collection of sequences to cut from a placefile's ref tree"
    min_a_dcl_tree: "finds a good collection of sequences to cut from a tree"
    pd_prune: "prunes the tree to maximize PD"
    prep_db: "makes SQL enabling taxonomic querying of placement results"
    prep_sim: "makes a simulation by taking out taxids and turning them into fake placements"
    re_class: "reclassifies nonconvex sequences in a reference package"
    ref_tree: "writes a taxonomically annotated reference tree and an induced taxonomic tree"
    re_root: "reroots a given reference package in place"
  }
  output {
    File out_stdout = stdout()
  }
}