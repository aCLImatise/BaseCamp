version 1.0

task Pplacer {
  input {
    Boolean? specify_path_reference
    Boolean? specify_tree_filename
    Boolean? specify_alignment_filename
    Boolean? supply_phyml_statstxt
    Boolean? specify_directory_containing
    Boolean? calculate_posterior_probabilities
    Boolean? substitution_model_protein
    Boolean? model_freqs
    Boolean? gamma_cats
    Boolean? gamma_alpha
    Boolean? ml_tolerance
    Boolean? pp_rel_err
    Boolean? unif_prior
    Boolean? inform_prior
    Boolean? prior_lower
    Boolean? start_pend
    Boolean? max_pend
    Boolean? fig_cut_off
    Boolean? fig_eval_all
    Boolean? fig_eval_discrepancy_tree
    Boolean? fig_tree
    Boolean? max_strikes
    Boolean? strike_box
    Boolean? max_pitches
    Boolean? fantasy
    Boolean? fantasy_frac
    Boolean? write_masked
    Boolean? verbosity
    Boolean? out_dir
    File? specify_output_name
    Boolean? pretend
    Boolean? check_like
    Boolean? number_child_processes
    Boolean? timing
    Boolean? no_pre_mask
    File? write_pre_masked
    File? map_mrca
    Boolean? map_mrca_min
    Boolean? map_identity
    Boolean? keep_at_most
    Boolean? keep_factor
    Boolean? mrca_class
    Boolean? groups
    Boolean? always_refine
    Boolean? help
  }
  command <<<
    pplacer \
      ~{if (specify_path_reference) then "-c" else ""} \
      ~{if (specify_tree_filename) then "-t" else ""} \
      ~{if (specify_alignment_filename) then "-r" else ""} \
      ~{if (supply_phyml_statstxt) then "-s" else ""} \
      ~{if (specify_directory_containing) then "-d" else ""} \
      ~{if (calculate_posterior_probabilities) then "-p" else ""} \
      ~{if (substitution_model_protein) then "-m" else ""} \
      ~{if (model_freqs) then "--model-freqs" else ""} \
      ~{if (gamma_cats) then "--gamma-cats" else ""} \
      ~{if (gamma_alpha) then "--gamma-alpha" else ""} \
      ~{if (ml_tolerance) then "--ml-tolerance" else ""} \
      ~{if (pp_rel_err) then "--pp-rel-err" else ""} \
      ~{if (unif_prior) then "--unif-prior" else ""} \
      ~{if (inform_prior) then "--inform-prior" else ""} \
      ~{if (prior_lower) then "--prior-lower" else ""} \
      ~{if (start_pend) then "--start-pend" else ""} \
      ~{if (max_pend) then "--max-pend" else ""} \
      ~{if (fig_cut_off) then "--fig-cutoff" else ""} \
      ~{if (fig_eval_all) then "--fig-eval-all" else ""} \
      ~{if (fig_eval_discrepancy_tree) then "--fig-eval-discrepancy-tree" else ""} \
      ~{if (fig_tree) then "--fig-tree" else ""} \
      ~{if (max_strikes) then "--max-strikes" else ""} \
      ~{if (strike_box) then "--strike-box" else ""} \
      ~{if (max_pitches) then "--max-pitches" else ""} \
      ~{if (fantasy) then "--fantasy" else ""} \
      ~{if (fantasy_frac) then "--fantasy-frac" else ""} \
      ~{if (write_masked) then "--write-masked" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (specify_output_name) then "-o" else ""} \
      ~{if (pretend) then "--pretend" else ""} \
      ~{if (check_like) then "--check-like" else ""} \
      ~{if (number_child_processes) then "-j" else ""} \
      ~{if (timing) then "--timing" else ""} \
      ~{if (no_pre_mask) then "--no-pre-mask" else ""} \
      ~{if (write_pre_masked) then "--write-pre-masked" else ""} \
      ~{if (map_mrca) then "--map-mrca" else ""} \
      ~{if (map_mrca_min) then "--map-mrca-min" else ""} \
      ~{if (map_identity) then "--map-identity" else ""} \
      ~{if (keep_at_most) then "--keep-at-most" else ""} \
      ~{if (keep_factor) then "--keep-factor" else ""} \
      ~{if (mrca_class) then "--mrca-class" else ""} \
      ~{if (groups) then "--groups" else ""} \
      ~{if (always_refine) then "--always-refine" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_path_reference: "Specify the path to the reference package."
    specify_tree_filename: "Specify the reference tree filename."
    specify_alignment_filename: "Specify the reference alignment filename."
    supply_phyml_statstxt: "Supply a phyml stats.txt or a RAxML info file giving the model parameters."
    specify_directory_containing: "Specify the directory containing the reference information."
    calculate_posterior_probabilities: "Calculate posterior probabilities."
    substitution_model_protein: "Substitution model. Protein: are LG, WAG, or JTT. Nucleotides: GTR."
    model_freqs: "Use model frequencies instead of reference alignment frequencies."
    gamma_cats: "Number of categories for discrete gamma model."
    gamma_alpha: "Specify the shape parameter for a discrete gamma model."
    ml_tolerance: "1st stage branch len optimization tolerance (2nd stage to 1e-5). Default: 0.01."
    pp_rel_err: "Relative error for the posterior probability calculation. Default is 0.01."
    unif_prior: "Use a uniform prior rather than exponential."
    inform_prior: "Use an informative exponential prior based on rooted distance to leaves."
    prior_lower: "Lower bound for the informative prior mean. Default is 0."
    start_pend: "Starting pendant branch length. Default is 0.1."
    max_pend: "Set the maximum ML pendant branch length. Default is 2."
    fig_cut_off: "The cutoff for determining figs. Default is 0; specify 0 to disable."
    fig_eval_all: "Evaluate all likelihoods to ensure that the best location was selected."
    fig_eval_discrepancy_tree: "Write out a tree showing the discrepancies between the best complete and observed locations."
    fig_tree: "Write out a tree showing the figs on the tree."
    max_strikes: "Maximum number of strikes for baseball. 0 -> no ball playing. Default is 6."
    strike_box: "Set the size of the strike box in log likelihood units. Default is 3."
    max_pitches: "Set the maximum number of pitches for baseball. Default is 40."
    fantasy: "Desired likelihood cutoff for fantasy baseball mode. 0 -> no fantasy."
    fantasy_frac: "Fraction of fragments to use when running fantasy baseball. Default is 0.1."
    write_masked: "Write alignment masked to the region without gaps in the query."
    verbosity: "Set verbosity level. 0 is silent, and 2 is quite a lot. Default is 1."
    out_dir: "Specify the directory to write place files to."
    specify_output_name: "Specify the output file name"
    pretend: "Only check out the files then report. Do not run the analysis."
    check_like: "Write out the likelihood of the reference tree, calculated two ways."
    number_child_processes: "The number of child processes to spawn when doing placements. Default is 2."
    timing: "Display timing information after the pplacer run finishes."
    no_pre_mask: "Don't pre-mask sequences before placement."
    write_pre_masked: "Write out the pre-masked sequences to the specified fasta file and exit."
    map_mrca: "Specify a file to write out MAP sequences for MRCAs and corresponding placements."
    map_mrca_min: "Specify cutoff for inclusion in MAP sequence file. Default is 0.8."
    map_identity: "Add the percent identity of the query sequence to the nearest MAP sequence to each placement."
    keep_at_most: "The maximum number of placements we keep. Default is 7."
    keep_factor: "Throw away anything that has ml_ratio below keep_factor times (best ml_ratio). Default is 0.01."
    mrca_class: "Classify with MRCAs instead of a painted tree."
    groups: "Split query alignment into the specified number of groups."
    always_refine: "Always refine the model before placing."
    help: "Display this list of options"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_name = "${in_specify_output_name}"
    File out_write_pre_masked = "${in_write_pre_masked}"
    File out_map_mrca = "${in_map_mrca}"
  }
}