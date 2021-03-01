class: CommandLineTool
id: pplacer.cwl
inputs:
- id: in_specify_path_reference
  doc: Specify the path to the reference package.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_specify_tree_filename
  doc: Specify the reference tree filename.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_specify_alignment_filename
  doc: Specify the reference alignment filename.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_supply_phyml_statstxt
  doc: Supply a phyml stats.txt or a RAxML info file giving the model parameters.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_specify_directory_containing
  doc: Specify the directory containing the reference information.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_calculate_posterior_probabilities
  doc: Calculate posterior probabilities.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_substitution_model_protein
  doc: 'Substitution model. Protein: LG, WAG, or JTT. Nucleotides: GTR.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_model_freqs
  doc: Use model frequencies instead of reference alignment frequencies.
  type: boolean?
  inputBinding:
    prefix: --model-freqs
- id: in_gamma_cats
  doc: Number of categories for discrete gamma model.
  type: boolean?
  inputBinding:
    prefix: --gamma-cats
- id: in_gamma_alpha
  doc: Specify the shape parameter for a discrete gamma model.
  type: boolean?
  inputBinding:
    prefix: --gamma-alpha
- id: in_ml_tolerance
  doc: '1st stage branch len optimization tolerance (2nd stage to 1e-5). Default:
    0.01.'
  type: boolean?
  inputBinding:
    prefix: --ml-tolerance
- id: in_pp_rel_err
  doc: Relative error for the posterior probability calculation. Default is 0.01.
  type: boolean?
  inputBinding:
    prefix: --pp-rel-err
- id: in_unif_prior
  doc: Use a uniform prior rather than exponential.
  type: boolean?
  inputBinding:
    prefix: --unif-prior
- id: in_inform_prior
  doc: Use an informative exponential prior based on rooted distance to leaves.
  type: boolean?
  inputBinding:
    prefix: --inform-prior
- id: in_prior_lower
  doc: Lower bound for the informative prior mean. Default is 0.
  type: boolean?
  inputBinding:
    prefix: --prior-lower
- id: in_start_pend
  doc: Starting pendant branch length. Default is 0.1.
  type: boolean?
  inputBinding:
    prefix: --start-pend
- id: in_max_pend
  doc: Set the maximum ML pendant branch length. Default is 2.
  type: boolean?
  inputBinding:
    prefix: --max-pend
- id: in_fig_cut_off
  doc: The cutoff for determining figs. Default is 0; specify 0 to disable.
  type: boolean?
  inputBinding:
    prefix: --fig-cutoff
- id: in_fig_eval_all
  doc: Evaluate all likelihoods to ensure that the best location was selected.
  type: boolean?
  inputBinding:
    prefix: --fig-eval-all
- id: in_fig_eval_discrepancy_tree
  doc: Write out a tree showing the discrepancies between the best complete and observed
    locations.
  type: boolean?
  inputBinding:
    prefix: --fig-eval-discrepancy-tree
- id: in_fig_tree
  doc: Write out a tree showing the figs on the tree.
  type: boolean?
  inputBinding:
    prefix: --fig-tree
- id: in_max_strikes
  doc: Maximum number of strikes for baseball. 0 -> no ball playing. Default is 6.
  type: boolean?
  inputBinding:
    prefix: --max-strikes
- id: in_strike_box
  doc: Set the size of the strike box in log likelihood units. Default is 3.
  type: boolean?
  inputBinding:
    prefix: --strike-box
- id: in_max_pitches
  doc: Set the maximum number of pitches for baseball. Default is 40.
  type: boolean?
  inputBinding:
    prefix: --max-pitches
- id: in_fantasy
  doc: Desired likelihood cutoff for fantasy baseball mode. 0 -> no fantasy.
  type: boolean?
  inputBinding:
    prefix: --fantasy
- id: in_fantasy_frac
  doc: Fraction of fragments to use when running fantasy baseball. Default is 0.1.
  type: boolean?
  inputBinding:
    prefix: --fantasy-frac
- id: in_write_masked
  doc: Write alignment masked to the region without gaps in the query.
  type: boolean?
  inputBinding:
    prefix: --write-masked
- id: in_verbosity
  doc: Set verbosity level. 0 is silent, and 2 is quite a lot. Default is 1.
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_out_dir
  doc: Specify the directory to write place files to.
  type: boolean?
  inputBinding:
    prefix: --out-dir
- id: in_specify_output_name
  doc: Specify the output file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_pretend
  doc: Only check out the files then report. Do not run the analysis.
  type: boolean?
  inputBinding:
    prefix: --pretend
- id: in_check_like
  doc: Write out the likelihood of the reference tree, calculated two ways.
  type: boolean?
  inputBinding:
    prefix: --check-like
- id: in_number_child_processes
  doc: The number of child processes to spawn when doing placements. Default is 2.
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_timing
  doc: Display timing information after the pplacer run finishes.
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_no_pre_mask
  doc: Don't pre-mask sequences before placement.
  type: boolean?
  inputBinding:
    prefix: --no-pre-mask
- id: in_write_pre_masked
  doc: Write out the pre-masked sequences to the specified fasta file before placement.
  type: File?
  inputBinding:
    prefix: --write-pre-masked
- id: in_map_mrca
  doc: Specify a file to write out MAP sequences for MRCAs and corresponding placements.
  type: File?
  inputBinding:
    prefix: --map-mrca
- id: in_map_mrca_min
  doc: Specify cutoff for inclusion in MAP sequence file. Default is 0.8.
  type: boolean?
  inputBinding:
    prefix: --map-mrca-min
- id: in_map_identity
  doc: Add the percent identity of the query sequence to the nearest MAP sequence
    to each placement.
  type: boolean?
  inputBinding:
    prefix: --map-identity
- id: in_keep_at_most
  doc: The maximum number of placements we keep. Default is 7.
  type: boolean?
  inputBinding:
    prefix: --keep-at-most
- id: in_keep_factor
  doc: Throw away anything that has ml_ratio below keep_factor times (best ml_ratio).
    Default is 0.01.
  type: boolean?
  inputBinding:
    prefix: --keep-factor
- id: in_mrca_class
  doc: Classify with MRCAs instead of a painted tree.
  type: boolean?
  inputBinding:
    prefix: --mrca-class
- id: in_groups
  doc: Split query alignment into the specified number of groups.
  type: boolean?
  inputBinding:
    prefix: --groups
- id: in_always_refine
  doc: Always refine the model before placing.
  type: boolean?
  inputBinding:
    prefix: --always-refine
- id: in_mmap_file
  doc: Instead of doing large allocations, mmap the given file. It will be created
    if it doesn't exist.
  type: boolean?
  inputBinding:
    prefix: --mmap-file
- id: in_discard_non_overlapped
  doc: When pre-masking, silently discard sequences which don't overlap the mask.
  type: boolean?
  inputBinding:
    prefix: --discard-nonoverlapped
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_name
  doc: Specify the output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_name)
- id: out_write_pre_masked
  doc: Write out the pre-masked sequences to the specified fasta file before placement.
  type: File?
  outputBinding:
    glob: $(inputs.in_write_pre_masked)
- id: out_map_mrca
  doc: Specify a file to write out MAP sequences for MRCAs and corresponding placements.
  type: File?
  outputBinding:
    glob: $(inputs.in_map_mrca)
hints: []
cwlVersion: v1.1
baseCommand:
- pplacer
