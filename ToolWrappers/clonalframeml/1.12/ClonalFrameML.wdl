version 1.0

task ClonalFrameML {
  input {
    Boolean? em
    Boolean? em_branch
    Boolean? rescale_no_recombination
    Boolean? imputation_only
    Boolean? kappa
    Boolean? fast_a_file_list
    Boolean? x_mfa_file
    Boolean? ignore_user_sites
    Boolean? ignore_incomplete_sites
    Boolean? use_incompatible_sites
    Boolean? show_progress
    File? chromosome_name
    Boolean? min_branch_length
    Boolean? reconstruct_invariant_sites
    Boolean? label_uncorrected_tree
    Boolean? prior_mean
    Boolean? prior_sd
    Boolean? initial_values
    Boolean? guess_initial_m
    Boolean? em_sim
    Boolean? em_branch_dispersion
    Boolean? output_filtered
    Boolean? brent_tolerance
    Boolean? powell_tolerance
  }
  command <<<
    ClonalFrameML \
      ~{if (em) then "-em" else ""} \
      ~{if (em_branch) then "-embranch" else ""} \
      ~{if (rescale_no_recombination) then "-rescale_no_recombination" else ""} \
      ~{if (imputation_only) then "-imputation_only" else ""} \
      ~{if (kappa) then "-kappa" else ""} \
      ~{if (fast_a_file_list) then "-fasta_file_list" else ""} \
      ~{if (x_mfa_file) then "-xmfa_file" else ""} \
      ~{if (ignore_user_sites) then "-ignore_user_sites" else ""} \
      ~{if (ignore_incomplete_sites) then "-ignore_incomplete_sites" else ""} \
      ~{if (use_incompatible_sites) then "-use_incompatible_sites" else ""} \
      ~{if (show_progress) then "-show_progress" else ""} \
      ~{if (chromosome_name) then "-chromosome_name" else ""} \
      ~{if (min_branch_length) then "-min_branch_length" else ""} \
      ~{if (reconstruct_invariant_sites) then "-reconstruct_invariant_sites" else ""} \
      ~{if (label_uncorrected_tree) then "-label_uncorrected_tree" else ""} \
      ~{if (prior_mean) then "-prior_mean" else ""} \
      ~{if (prior_sd) then "-prior_sd" else ""} \
      ~{if (initial_values) then "-initial_values" else ""} \
      ~{if (guess_initial_m) then "-guess_initial_m" else ""} \
      ~{if (em_sim) then "-emsim" else ""} \
      ~{if (em_branch_dispersion) then "-embranch_dispersion" else ""} \
      ~{if (output_filtered) then "-output_filtered" else ""} \
      ~{if (brent_tolerance) then "-brent_tolerance" else ""} \
      ~{if (powell_tolerance) then "-powell_tolerance" else ""}
  >>>
  parameter_meta {
    em: "true (default) or false   Estimate parameters by a Baum-Welch expectation maximization algorithm."
    em_branch: "true or false (default)   Estimate parameters for each branch using the EM algorithm."
    rescale_no_recombination: "true or false (default)   Rescale branch lengths for given sites with no recombination model."
    imputation_only: "true or false (default)   Perform only ancestral state reconstruction and imputation."
    kappa: "value > 0 (default 2.0)   Relative rate of transitions vs transversions in substitution model"
    fast_a_file_list: "true or false (default)   Take fasta_file to be a white-space separated file list."
    x_mfa_file: "true or false (default)   Take fasta_file to be an XMFA file."
    ignore_user_sites: "sites_file                Ignore sites listed in whitespace-separated sites_file."
    ignore_incomplete_sites: "true or false (default)   Ignore sites with any ambiguous bases."
    use_incompatible_sites: "true (default) or false   Use homoplasious and multiallelic sites to correct branch lengths."
    show_progress: "true or false (default)   Output the progress of the maximum likelihood routines."
    chromosome_name: "name, eg \\\"chr\\\"            Output importation status file in BED format using given chromosome name."
    min_branch_length: "value > 0 (default 1e-7)  Minimum branch length."
    reconstruct_invariant_sites: "true or false (default)   Reconstruct the ancestral states at invariant sites."
    label_uncorrected_tree: "true or false (default)   Regurgitate the uncorrected Newick tree with internal nodes labelled."
    prior_mean: "df \\\"0.1 0.001 0.1 0.0001\\\" Prior mean for R/theta, 1/delta, nu and M."
    prior_sd: "df \\\"0.1 0.001 0.1 0.0001\\\" Prior standard deviation for R/theta, 1/delta, nu and M."
    initial_values: "default \\\"0.1 0.001 0.05\\\"  Initial values for R/theta, 1/delta and nu."
    guess_initial_m: "true (default) or false   Initialize M and nu jointly in the EM algorithms."
    em_sim: "value >= 0  (default 0)   Number of simulations to estimate uncertainty in the EM results."
    em_branch_dispersion: "value > 0 (default .01)   Dispersion in parameters among branches in the -embranch model."
    output_filtered: "true of false (default)   Output a filtered alignment including only non-recombinant sites."
    brent_tolerance: "tolerance (default .001)  Set the tolerance of the Brent routine for -rescale_no_recombination."
    powell_tolerance: "tolerance (default .001)  Set the tolerance of the Powell routine for -rescale_no_recombination."
  }
  output {
    File out_stdout = stdout()
    File out_chromosome_name = "${in_chromosome_name}"
  }
}