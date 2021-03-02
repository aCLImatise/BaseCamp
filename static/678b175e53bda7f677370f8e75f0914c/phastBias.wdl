version 1.0

task PhastBias {
  input {
    Boolean? msa_format
    Int? bgc
    Int? estimate_bgc
    Int? bgc_exp_length
    Int? estimate_bgc_exp_length
    Float? bgc_target_coverage
    Int? estimate_bgc_target_coverage
    Float? rho
    Int? cons_exp_length
    Int? cons_target_coverage
    Int? scale
    Int? estimate_scale
    Int? eq_freqs_from_msa
    File? output_tracts
    File? posteriors
    String? output_mods
    File? informative_fn
    Boolean? informative_only
    String states_dot
  }
  command <<<
    phastBias \
      ~{states_dot} \
      ~{if (msa_format) then "--msa-format" else ""} \
      ~{if defined(bgc) then ("--bgc " +  '"' + bgc + '"') else ""} \
      ~{if defined(estimate_bgc) then ("--estimate-bgc " +  '"' + estimate_bgc + '"') else ""} \
      ~{if defined(bgc_exp_length) then ("--bgc-exp-length " +  '"' + bgc_exp_length + '"') else ""} \
      ~{if defined(estimate_bgc_exp_length) then ("--estimate-bgc-exp-length " +  '"' + estimate_bgc_exp_length + '"') else ""} \
      ~{if defined(bgc_target_coverage) then ("--bgc-target-coverage " +  '"' + bgc_target_coverage + '"') else ""} \
      ~{if defined(estimate_bgc_target_coverage) then ("--estimate-bgc-target-coverage " +  '"' + estimate_bgc_target_coverage + '"') else ""} \
      ~{if defined(rho) then ("--rho " +  '"' + rho + '"') else ""} \
      ~{if defined(cons_exp_length) then ("--cons-exp-length " +  '"' + cons_exp_length + '"') else ""} \
      ~{if defined(cons_target_coverage) then ("--cons-target-coverage " +  '"' + cons_target_coverage + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(estimate_scale) then ("--estimate-scale " +  '"' + estimate_scale + '"') else ""} \
      ~{if defined(eq_freqs_from_msa) then ("--eqfreqs-from-msa " +  '"' + eq_freqs_from_msa + '"') else ""} \
      ~{if defined(output_tracts) then ("--output-tracts " +  '"' + output_tracts + '"') else ""} \
      ~{if defined(posteriors) then ("--posteriors " +  '"' + posteriors + '"') else ""} \
      ~{if defined(output_mods) then ("--output-mods " +  '"' + output_mods + '"') else ""} \
      ~{if defined(informative_fn) then ("--informative-fn " +  '"' + informative_fn + '"') else ""} \
      ~{if (informative_only) then "--informative-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    msa_format: ").  The neutral model must be in the .mod format"
    bgc: "The B parameter describes the strength of gBGC.  It must be > 0.\\nToo low of a value may yield false positives, as the gBGC model\\nbecomes indistinguishable from the non-gBGC model.\\nDefault: 3"
    estimate_bgc: "Use \\\"--estimate-bgc 1\\\" to estimate B by maximum likelihood.\\nDefault: 0"
    bgc_exp_length: "Set the prior expected length of gBGC tracts.  This is equivalent to\\n1/alpha in the parametrization defined by Capra et al, where\\nalpha is the rate out of gBGC states.\\nDefault: 1000"
    estimate_bgc_exp_length: "Use \\\"--estimate-bgc-exp-length 1\\\" to estimate this parameter by an\\nexpectation-maximization algorithm.\\nDefault: 0"
    bgc_target_coverage: "Set the prior for gBGC tract coverage (as a fraction between 0 and 1).\\nThis is represented in the model as beta/(alpha+beta), where beta\\nis the rate into the gBGC state, and alpha is the rate out of the\\ngBGC state.\\nDefault: 0.01"
    estimate_bgc_target_coverage: "Use \\\"--estimate-bgc-target-coverage 0\\\" to hold this parameter constant.\\nDefault: 1 (This is the only parameter estimated by default.)"
    rho: "Set the scaling factor for branch lengths in conserved states.  Rho should\\nbe between 0 and 1.\\nDefault: 0.31"
    cons_exp_length: "Set the prior expected length of conserved elements.  This parameter is\\nheld constant; if you want to tune it, it is recommended to do this\\nwith the phastCons program under a non-gBGC model (see the\\n--expected-length option in phastCons).\\nDefault: 45"
    cons_target_coverage: "Set the prior for coverage of conserved elements (as a fraction\\nbetween 0 and 1).  Like the --cons-exp-length above, this parameter\\nis also held constant, but can be tuned with phastCons (see\\nphastCons --transitions).\\nDefault: 0.3"
    scale: "Set an overall scaling factor for the branch lengths in all states.\\nDefault: 1"
    estimate_scale: "Rescale the branches in all states by a scaling factor determined by\\nmaximum likelihood (initialized by --scale above).\\nDefault: 0"
    eq_freqs_from_msa: "Reset equilibrium frequencies of A,C,G,T based on frequencies observed\\nin the alignment.  Otherwise will not be altered from input model.\\nDefault: 1"
    output_tracts: "Print a GFF file identifying all regions with posterior probability of\\nbeing in a gBGC state > 0.5."
    posteriors: "Use this option to control posterior probability output, which is\\nwritten to stdout.  \\\"none\\\" implies do not output anything; wig outputs\\na standard fixed-step wiggle file giving the probability that each\\nbase is assigned to a gBGC state; \\\"full\\\" outputs a table with five\\ncolumns.  The first column is the coordinate (1-based relative to\\nthe first sequence in the alignment), followed by the probabilities\\nof each of the four states: neutral, conserved, gBGC neutral,\\ngBGC conserved.\\nDefault: wig"
    output_mods: "Print out the tree models for all four states to <output_root>.cons.mod,\\n<output_root>.neutral.mod, <output_root>.gBGC_cons.mod, and\\n<output_root>.gBGC_neutral.mod."
    informative_fn: "Print a GFF containing regions of the alignment which are informative\\nfor gBGC. Note: only works properly if foreground branch is a single\\nbranch (not a group of branches)."
    informative_only: "(To be used with --informative-fn). Print the informative regions, then\\nquit."
    states_dot: "It can also produce gBGC tracts by thresholding this"
  }
  output {
    File out_stdout = stdout()
    File out_posteriors = "${in_posteriors}"
  }
}