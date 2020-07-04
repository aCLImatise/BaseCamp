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
    Boolean? specify_file_name
    Boolean? pretend
    Boolean? check_like
    Boolean? number_child_spawn
    Boolean? timing
    Boolean? no_pre_mask
    Boolean? write_pre_masked
    Boolean? map_mrca
    Boolean? map_mrca_min
    Boolean? map_identity
    Boolean? keep_at_most
    Boolean? keep_factor
    Boolean? mrca_class
    Boolean? groups
    Boolean? always_refine
    Boolean? mmap_file
    Boolean? discard_non_overlapped
    Boolean? help
  }
  command <<<
    pplacer \
      ~{true="-c" false="" specify_path_reference} \
      ~{true="-t" false="" specify_tree_filename} \
      ~{true="-r" false="" specify_alignment_filename} \
      ~{true="-s" false="" supply_phyml_statstxt} \
      ~{true="-d" false="" specify_directory_containing} \
      ~{true="-p" false="" calculate_posterior_probabilities} \
      ~{true="-m" false="" substitution_model_protein} \
      ~{true="--model-freqs" false="" model_freqs} \
      ~{true="--gamma-cats" false="" gamma_cats} \
      ~{true="--gamma-alpha" false="" gamma_alpha} \
      ~{true="--ml-tolerance" false="" ml_tolerance} \
      ~{true="--pp-rel-err" false="" pp_rel_err} \
      ~{true="--unif-prior" false="" unif_prior} \
      ~{true="--inform-prior" false="" inform_prior} \
      ~{true="--prior-lower" false="" prior_lower} \
      ~{true="--start-pend" false="" start_pend} \
      ~{true="--max-pend" false="" max_pend} \
      ~{true="--fig-cutoff" false="" fig_cut_off} \
      ~{true="--fig-eval-all" false="" fig_eval_all} \
      ~{true="--fig-eval-discrepancy-tree" false="" fig_eval_discrepancy_tree} \
      ~{true="--fig-tree" false="" fig_tree} \
      ~{true="--max-strikes" false="" max_strikes} \
      ~{true="--strike-box" false="" strike_box} \
      ~{true="--max-pitches" false="" max_pitches} \
      ~{true="--fantasy" false="" fantasy} \
      ~{true="--fantasy-frac" false="" fantasy_frac} \
      ~{true="--write-masked" false="" write_masked} \
      ~{true="--verbosity" false="" verbosity} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="-o" false="" specify_file_name} \
      ~{true="--pretend" false="" pretend} \
      ~{true="--check-like" false="" check_like} \
      ~{true="-j" false="" number_child_spawn} \
      ~{true="--timing" false="" timing} \
      ~{true="--no-pre-mask" false="" no_pre_mask} \
      ~{true="--write-pre-masked" false="" write_pre_masked} \
      ~{true="--map-mrca" false="" map_mrca} \
      ~{true="--map-mrca-min" false="" map_mrca_min} \
      ~{true="--map-identity" false="" map_identity} \
      ~{true="--keep-at-most" false="" keep_at_most} \
      ~{true="--keep-factor" false="" keep_factor} \
      ~{true="--mrca-class" false="" mrca_class} \
      ~{true="--groups" false="" groups} \
      ~{true="--always-refine" false="" always_refine} \
      ~{true="--mmap-file" false="" mmap_file} \
      ~{true="--discard-nonoverlapped" false="" discard_non_overlapped} \
      ~{true="--help" false="" help}
  >>>
  parameter_meta {
    specify_path_reference: "Specify the path to the reference package."
    specify_tree_filename: "Specify the reference tree filename."
    specify_alignment_filename: "Specify the reference alignment filename."
    supply_phyml_statstxt: "Supply a phyml stats.txt or a RAxML info file giving the model parameters."
    specify_directory_containing: "Specify the directory containing the reference information."
    calculate_posterior_probabilities: "Calculate posterior probabilities."
    substitution_model_protein: "Substitution model. Protein: LG, WAG, or JTT. Nucleotides: GTR."
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
    specify_file_name: "Specify the output file name"
    pretend: "Only check out the files then report. Do not run the analysis."
    check_like: "Write out the likelihood of the reference tree, calculated two ways."
    number_child_spawn: "The number of child processes to spawn when doing placements. Default is 2."
    timing: "Display timing information after the pplacer run finishes."
    no_pre_mask: "Don't pre-mask sequences before placement."
    write_pre_masked: "Write out the pre-masked sequences to the specified fasta file before placement."
    map_mrca: "Specify a file to write out MAP sequences for MRCAs and corresponding placements."
    map_mrca_min: "Specify cutoff for inclusion in MAP sequence file. Default is 0.8."
    map_identity: "Add the percent identity of the query sequence to the nearest MAP sequence to each placement."
    keep_at_most: "The maximum number of placements we keep. Default is 7."
    keep_factor: "Throw away anything that has ml_ratio below keep_factor times (best ml_ratio). Default is 0.01."
    mrca_class: "Classify with MRCAs instead of a painted tree."
    groups: "Split query alignment into the specified number of groups."
    always_refine: "Always refine the model before placing."
    mmap_file: "Instead of doing large allocations, mmap the given file. It will be created if it doesn't exist."
    discard_non_overlapped: "When pre-masking, silently discard sequences which don't overlap the mask."
    help: "Display this list of options"
  }
}