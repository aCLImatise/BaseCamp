class: CommandLineTool
id: pplacer.cwl
inputs:
- id: c
  doc: Specify the path to the reference package.
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: Specify the reference tree filename.
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: Specify the reference alignment filename.
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: Supply a phyml stats.txt or a RAxML info file giving the model parameters.
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: Specify the directory containing the reference information.
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: Calculate posterior probabilities.
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: 'Substitution model. Protein: LG, WAG, or JTT. Nucleotides: GTR.'
  type: boolean
  inputBinding:
    prefix: -m
- id: model_freqs
  doc: Use model frequencies instead of reference alignment frequencies.
  type: boolean
  inputBinding:
    prefix: --model-freqs
- id: gamma_cats
  doc: Number of categories for discrete gamma model.
  type: boolean
  inputBinding:
    prefix: --gamma-cats
- id: gamma_alpha
  doc: Specify the shape parameter for a discrete gamma model.
  type: boolean
  inputBinding:
    prefix: --gamma-alpha
- id: ml_tolerance
  doc: '1st stage branch len optimization tolerance (2nd stage to 1e-5). Default:
    0.01.'
  type: boolean
  inputBinding:
    prefix: --ml-tolerance
- id: pp_rel_err
  doc: Relative error for the posterior probability calculation. Default is 0.01.
  type: boolean
  inputBinding:
    prefix: --pp-rel-err
- id: unif_prior
  doc: Use a uniform prior rather than exponential.
  type: boolean
  inputBinding:
    prefix: --unif-prior
- id: inform_prior
  doc: Use an informative exponential prior based on rooted distance to leaves.
  type: boolean
  inputBinding:
    prefix: --inform-prior
- id: prior_lower
  doc: Lower bound for the informative prior mean. Default is 0.
  type: boolean
  inputBinding:
    prefix: --prior-lower
- id: start_pend
  doc: Starting pendant branch length. Default is 0.1.
  type: boolean
  inputBinding:
    prefix: --start-pend
- id: max_pend
  doc: Set the maximum ML pendant branch length. Default is 2.
  type: boolean
  inputBinding:
    prefix: --max-pend
- id: fig_cut_off
  doc: The cutoff for determining figs. Default is 0; specify 0 to disable.
  type: boolean
  inputBinding:
    prefix: --fig-cutoff
- id: fig_eval_all
  doc: Evaluate all likelihoods to ensure that the best location was selected.
  type: boolean
  inputBinding:
    prefix: --fig-eval-all
- id: fig_eval_discrepancy_tree
  doc: Write out a tree showing the discrepancies between the best complete and observed
    locations.
  type: boolean
  inputBinding:
    prefix: --fig-eval-discrepancy-tree
- id: fig_tree
  doc: Write out a tree showing the figs on the tree.
  type: boolean
  inputBinding:
    prefix: --fig-tree
- id: max_strikes
  doc: Maximum number of strikes for baseball. 0 -> no ball playing. Default is 6.
  type: boolean
  inputBinding:
    prefix: --max-strikes
- id: strike_box
  doc: Set the size of the strike box in log likelihood units. Default is 3.
  type: boolean
  inputBinding:
    prefix: --strike-box
- id: max_pitches
  doc: Set the maximum number of pitches for baseball. Default is 40.
  type: boolean
  inputBinding:
    prefix: --max-pitches
- id: fantasy
  doc: Desired likelihood cutoff for fantasy baseball mode. 0 -> no fantasy.
  type: boolean
  inputBinding:
    prefix: --fantasy
- id: fantasy_frac
  doc: Fraction of fragments to use when running fantasy baseball. Default is 0.1.
  type: boolean
  inputBinding:
    prefix: --fantasy-frac
- id: write_masked
  doc: Write alignment masked to the region without gaps in the query.
  type: boolean
  inputBinding:
    prefix: --write-masked
- id: verbosity
  doc: Set verbosity level. 0 is silent, and 2 is quite a lot. Default is 1.
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: out_dir
  doc: Specify the directory to write place files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: o
  doc: Specify the output file name
  type: boolean
  inputBinding:
    prefix: -o
- id: pretend
  doc: Only check out the files then report. Do not run the analysis.
  type: boolean
  inputBinding:
    prefix: --pretend
- id: check_like
  doc: Write out the likelihood of the reference tree, calculated two ways.
  type: boolean
  inputBinding:
    prefix: --check-like
- id: j
  doc: The number of child processes to spawn when doing placements. Default is 2.
  type: boolean
  inputBinding:
    prefix: -j
- id: timing
  doc: Display timing information after the pplacer run finishes.
  type: boolean
  inputBinding:
    prefix: --timing
- id: no_pre_mask
  doc: Don't pre-mask sequences before placement.
  type: boolean
  inputBinding:
    prefix: --no-pre-mask
- id: write_pre_masked
  doc: Write out the pre-masked sequences to the specified fasta file before placement.
  type: boolean
  inputBinding:
    prefix: --write-pre-masked
- id: map_mrca
  doc: Specify a file to write out MAP sequences for MRCAs and corresponding placements.
  type: boolean
  inputBinding:
    prefix: --map-mrca
- id: map_mrca_min
  doc: Specify cutoff for inclusion in MAP sequence file. Default is 0.8.
  type: boolean
  inputBinding:
    prefix: --map-mrca-min
- id: map_identity
  doc: Add the percent identity of the query sequence to the nearest MAP sequence
    to each placement.
  type: boolean
  inputBinding:
    prefix: --map-identity
- id: keep_at_most
  doc: The maximum number of placements we keep. Default is 7.
  type: boolean
  inputBinding:
    prefix: --keep-at-most
- id: keep_factor
  doc: Throw away anything that has ml_ratio below keep_factor times (best ml_ratio).
    Default is 0.01.
  type: boolean
  inputBinding:
    prefix: --keep-factor
- id: mrca_class
  doc: Classify with MRCAs instead of a painted tree.
  type: boolean
  inputBinding:
    prefix: --mrca-class
- id: groups
  doc: Split query alignment into the specified number of groups.
  type: boolean
  inputBinding:
    prefix: --groups
- id: always_refine
  doc: Always refine the model before placing.
  type: boolean
  inputBinding:
    prefix: --always-refine
- id: mmap_file
  doc: Instead of doing large allocations, mmap the given file. It will be created
    if it doesn't exist.
  type: boolean
  inputBinding:
    prefix: --mmap-file
- id: discard_non_overlapped
  doc: When pre-masking, silently discard sequences which don't overlap the mask.
  type: boolean
  inputBinding:
    prefix: --discard-nonoverlapped
- id: help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- pplacer
