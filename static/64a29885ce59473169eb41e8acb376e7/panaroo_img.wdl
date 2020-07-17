version 1.0

task PanarooImg {
  input {
    String? tree
    String? pa
    String? out_dir
    String? number_seperate_use
    Boolean? no_essential
    Boolean? no_constraint
    String? model
    String? fit
    String? in_it_u_one
    String? in_it_u_two
    String? in_it_v_one
    String? in_it_v_two
    String? in_it_ess
    Boolean? verbose
    String pana_roo_img_est
  }
  command <<<
    panaroo-img \
      ~{pana_roo_img_est} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(pa) then ("--pa " +  '"' + pa + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(number_seperate_use) then ("-D " +  '"' + number_seperate_use + '"') else ""} \
      ~{true="--no_essential" false="" no_essential} \
      ~{true="--no_constraint" false="" no_constraint} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(fit) then ("--fit " +  '"' + fit + '"') else ""} \
      ~{if defined(in_it_u_one) then ("--init_u1 " +  '"' + in_it_u_one + '"') else ""} \
      ~{if defined(in_it_u_two) then ("--init_u2 " +  '"' + in_it_u_two + '"') else ""} \
      ~{if defined(in_it_v_one) then ("--init_v1 " +  '"' + in_it_v_one + '"') else ""} \
      ~{if defined(in_it_v_two) then ("--init_v2 " +  '"' + in_it_v_two + '"') else ""} \
      ~{if defined(in_it_ess) then ("--init_ess " +  '"' + in_it_ess + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    tree: "A dated phylogeny."
    pa: "A presence/absence produced by Panaroo."
    out_dir: "location of an output directory"
    number_seperate_use: "Number of seperate rate classes to use for the dispensable genome. Can be either 1 or 2."
    no_essential: "Removes essential gene class from model"
    no_constraint: "Removes constraint that u/v must equal the genome size."
    model: "Model to fit. Can be one of 'coalescent' or 'fixed'."
    fit: "Whether to use the gene frequency spectrum or the core/pangeome size for fitting (default=gf)"
    in_it_u_one: "Initial value for u1 (default=0.01)."
    in_it_u_two: "Initial value for u2 (default=0.01)."
    in_it_v_one: "Initial value for v1 (default=0.01)."
    in_it_v_two: "Initial value for v2 (default=0.01)."
    in_it_ess: "Initial value for the number of essential genes (default=2000)."
    verbose: "print additional output"
    pana_roo_img_est: ""
  }
}