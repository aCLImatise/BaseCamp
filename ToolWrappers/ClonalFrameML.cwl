class: CommandLineTool
id: ClonalFrameML.cwl
inputs:
- id: in_em
  doc: true (default) or false   Estimate parameters by a Baum-Welch expectation maximization
    algorithm.
  type: boolean
  inputBinding:
    prefix: -em
- id: in_em_branch
  doc: true or false (default)   Estimate parameters for each branch using the EM
    algorithm.
  type: boolean
  inputBinding:
    prefix: -embranch
- id: in_rescale_no_recombination
  doc: true or false (default)   Rescale branch lengths for given sites with no recombination
    model.
  type: boolean
  inputBinding:
    prefix: -rescale_no_recombination
- id: in_imputation_only
  doc: true or false (default)   Perform only ancestral state reconstruction and imputation.
  type: boolean
  inputBinding:
    prefix: -imputation_only
- id: in_kappa
  doc: value > 0 (default 2.0)   Relative rate of transitions vs transversions in
    substitution model
  type: boolean
  inputBinding:
    prefix: -kappa
- id: in_fast_a_file_list
  doc: true or false (default)   Take fasta_file to be a white-space separated file
    list.
  type: boolean
  inputBinding:
    prefix: -fasta_file_list
- id: in_x_mfa_file
  doc: true or false (default)   Take fasta_file to be an XMFA file.
  type: boolean
  inputBinding:
    prefix: -xmfa_file
- id: in_ignore_user_sites
  doc: sites_file                Ignore sites listed in whitespace-separated sites_file.
  type: boolean
  inputBinding:
    prefix: -ignore_user_sites
- id: in_ignore_incomplete_sites
  doc: true or false (default)   Ignore sites with any ambiguous bases.
  type: boolean
  inputBinding:
    prefix: -ignore_incomplete_sites
- id: in_use_incompatible_sites
  doc: true (default) or false   Use homoplasious and multiallelic sites to correct
    branch lengths.
  type: boolean
  inputBinding:
    prefix: -use_incompatible_sites
- id: in_show_progress
  doc: true or false (default)   Output the progress of the maximum likelihood routines.
  type: boolean
  inputBinding:
    prefix: -show_progress
- id: in_chromosome_name
  doc: name, eg "chr"            Output importation status file in BED format using
    given chromosome name.
  type: File
  inputBinding:
    prefix: -chromosome_name
- id: in_min_branch_length
  doc: value > 0 (default 1e-7)  Minimum branch length.
  type: boolean
  inputBinding:
    prefix: -min_branch_length
- id: in_reconstruct_invariant_sites
  doc: true or false (default)   Reconstruct the ancestral states at invariant sites.
  type: boolean
  inputBinding:
    prefix: -reconstruct_invariant_sites
- id: in_label_uncorrected_tree
  doc: true or false (default)   Regurgitate the uncorrected Newick tree with internal
    nodes labelled.
  type: boolean
  inputBinding:
    prefix: -label_uncorrected_tree
- id: in_prior_mean
  doc: df "0.1 0.001 0.1 0.0001" Prior mean for R/theta, 1/delta, nu and M.
  type: boolean
  inputBinding:
    prefix: -prior_mean
- id: in_prior_sd
  doc: df "0.1 0.001 0.1 0.0001" Prior standard deviation for R/theta, 1/delta, nu
    and M.
  type: boolean
  inputBinding:
    prefix: -prior_sd
- id: in_initial_values
  doc: default "0.1 0.001 0.05"  Initial values for R/theta, 1/delta and nu.
  type: boolean
  inputBinding:
    prefix: -initial_values
- id: in_guess_initial_m
  doc: true (default) or false   Initialize M and nu jointly in the EM algorithms.
  type: boolean
  inputBinding:
    prefix: -guess_initial_m
- id: in_em_sim
  doc: value >= 0  (default 0)   Number of simulations to estimate uncertainty in
    the EM results.
  type: boolean
  inputBinding:
    prefix: -emsim
- id: in_em_branch_dispersion
  doc: value > 0 (default .01)   Dispersion in parameters among branches in the -embranch
    model.
  type: boolean
  inputBinding:
    prefix: -embranch_dispersion
- id: in_output_filtered
  doc: true of false (default)   Output a filtered alignment including only non-recombinant
    sites.
  type: boolean
  inputBinding:
    prefix: -output_filtered
- id: in_brent_tolerance
  doc: tolerance (default .001)  Set the tolerance of the Brent routine for -rescale_no_recombination.
  type: boolean
  inputBinding:
    prefix: -brent_tolerance
- id: in_powell_tolerance
  doc: tolerance (default .001)  Set the tolerance of the Powell routine for -rescale_no_recombination.
  type: boolean
  inputBinding:
    prefix: -powell_tolerance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_chromosome_name
  doc: name, eg "chr"            Output importation status file in BED format using
    given chromosome name.
  type: File
  outputBinding:
    glob: $(inputs.in_chromosome_name)
cwlVersion: v1.1
baseCommand:
- ClonalFrameML
