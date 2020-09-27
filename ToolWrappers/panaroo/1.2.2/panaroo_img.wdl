version 1.0

task Panarooimg {
  input {
    String? tree
    String? pa
    Directory? out_dir
    String? number_seperate_use
    Boolean? no_essential
    Boolean? no_constraint
    String? fit
    Int? in_it_u_one
    Int? in_it_u_two
    Int? in_it_v_one
    Int? in_it_v_two
    Int? in_it_ess
    Boolean? verbose
    Int size_dot
  }
  command <<<
    panaroo_img \
      ~{size_dot} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(pa) then ("--pa " +  '"' + pa + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(number_seperate_use) then ("-D " +  '"' + number_seperate_use + '"') else ""} \
      ~{if (no_essential) then "--no_essential" else ""} \
      ~{if (no_constraint) then "--no_constraint" else ""} \
      ~{if defined(fit) then ("--fit " +  '"' + fit + '"') else ""} \
      ~{if defined(in_it_u_one) then ("--init_u1 " +  '"' + in_it_u_one + '"') else ""} \
      ~{if defined(in_it_u_two) then ("--init_u2 " +  '"' + in_it_u_two + '"') else ""} \
      ~{if defined(in_it_v_one) then ("--init_v1 " +  '"' + in_it_v_one + '"') else ""} \
      ~{if defined(in_it_v_two) then ("--init_v2 " +  '"' + in_it_v_two + '"') else ""} \
      ~{if defined(in_it_ess) then ("--init_ess " +  '"' + in_it_ess + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    tree: "A dated phylogeny."
    pa: "A presence/absence produced by Panaroo."
    out_dir: "location of an output directory"
    number_seperate_use: "Number of seperate rate classes to use for the\\ndispensable genome. Can be either 1 or 2."
    no_essential: "Removes essential gene class from model"
    no_constraint: "Removes constraint that u/v must equal the genome"
    fit: "Whether to use the gene frequency spectrum or the\\ncore/pangeome size for fitting (default=gf)"
    in_it_u_one: "Initial value for u1 (default=0.01)."
    in_it_u_two: "Initial value for u2 (default=0.01)."
    in_it_v_one: "Initial value for v1 (default=0.01)."
    in_it_v_two: "Initial value for v2 (default=0.01)."
    in_it_ess: "Initial value for the number of essential genes\\n(default=2000)."
    verbose: "print additional output"
    size_dot: "--model {coalescent,fixed}"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}