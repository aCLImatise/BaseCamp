version 1.0

task PhastBias {
  input {
    String? bgc
    String? estimate_bgc
    Int? bgc_exp_length
    String? estimate_bgc_exp_length
    String? bgc_target_coverage
    String? estimate_bgc_target_coverage
    String? rho
    Int? cons_exp_length
    String? cons_target_coverage
    String? scale
    String? estimate_scale
    String? eq_freqs_from_msa
    File? output_tracts
    String? posteriors
    String? output_mods
    File? informative_fn
    Boolean? informative_only
    String alignment
    String neutral_dot_mod
    String foreground_branch
  }
  command <<<
    phastBias \
      ~{alignment} \
      ~{neutral_dot_mod} \
      ~{foreground_branch} \
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
      ~{true="--informative-only" false="" informative_only}
  >>>
  parameter_meta {
    bgc: "The B parameter describes the strength of gBGC.  It must be > 0. Too low of a value may yield false positives, as the gBGC model  becomes indistinguishable from the non-gBGC model. Default: 3"
    estimate_bgc: "Use \"--estimate-bgc 1\" to estimate B by maximum likelihood. Default: 0"
    bgc_exp_length: "Set the prior expected length of gBGC tracts.  This is equivalent to 1/alpha in the parametrization defined by Capra et al, where alpha is the rate out of gBGC states. Default: 1000"
    estimate_bgc_exp_length: "Use \"--estimate-bgc-exp-length 1\" to estimate this parameter by an expectation-maximization algorithm. Default: 0"
    bgc_target_coverage: "Set the prior for gBGC tract coverage (as a fraction between 0 and 1). This is represented in the model as beta/(alpha+beta), where beta is the rate into the gBGC state, and alpha is the rate out of the gBGC state. Default: 0.01"
    estimate_bgc_target_coverage: "Use \"--estimate-bgc-target-coverage 0\" to hold this parameter constant. Default: 1 (This is the only parameter estimated by default.)"
    rho: "Set the scaling factor for branch lengths in conserved states.  Rho should be between 0 and 1. Default: 0.31"
    cons_exp_length: "Set the prior expected length of conserved elements.  This parameter is held constant; if you want to tune it, it is recommended to do this with the phastCons program under a non-gBGC model (see the  --expected-length option in phastCons). Default: 45"
    cons_target_coverage: "Set the prior for coverage of conserved elements (as a fraction  between 0 and 1).  Like the --cons-exp-length above, this parameter is also held constant, but can be tuned with phastCons (see phastCons --transitions). Default: 0.3"
    scale: "Set an overall scaling factor for the branch lengths in all states. Default: 1"
    estimate_scale: "Rescale the branches in all states by a scaling factor determined by maximum likelihood (initialized by --scale above). Default: 0"
    eq_freqs_from_msa: "Reset equilibrium frequencies of A,C,G,T based on frequencies observed in the alignment.  Otherwise will not be altered from input model. Default: 1"
    output_tracts: "Print a GFF file identifying all regions with posterior probability of being in a gBGC state > 0.5."
    posteriors: "Use this option to control posterior probability output, which is  written to stdout.  \"none\" implies do not output anything; wig outputs a standard fixed-step wiggle file giving the probability that each base is assigned to a gBGC state; \"full\" outputs a table with five columns.  The first column is the coordinate (1-based relative to the first sequence in the alignment), followed by the probabilities of each of the four states: neutral, conserved, gBGC neutral,  gBGC conserved. Default: wig"
    output_mods: "Print out the tree models for all four states to <output_root>.cons.mod, <output_root>.neutral.mod, <output_root>.gBGC_cons.mod, and <output_root>.gBGC_neutral.mod."
    informative_fn: "Print a GFF containing regions of the alignment which are informative for gBGC. Note: only works properly if foreground branch is a single branch (not a group of branches). "
    informative_only: "(To be used with --informative-fn). Print the informative regions, then quit."
    alignment: ""
    neutral_dot_mod: ""
    foreground_branch: ""
  }
}