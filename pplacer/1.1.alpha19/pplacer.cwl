#!/usr/bin/env cwl-runner

baseCommand:
- pplacer
class: CommandLineTool
cwlVersion: v1.0
id: pplacer
inputs:
- doc: Specify the path to the reference package.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Specify the reference tree filename.
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: Specify the reference alignment filename.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Supply a phyml stats.txt or a RAxML info file giving the model parameters.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Specify the directory containing the reference information.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Calculate posterior probabilities.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'Substitution model. Protein: LG, WAG, or JTT. Nucleotides: GTR.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Use model frequencies instead of reference alignment frequencies.
  id: model_freqs
  inputBinding:
    prefix: --model-freqs
  type: boolean
- doc: Number of categories for discrete gamma model.
  id: gamma_cats
  inputBinding:
    prefix: --gamma-cats
  type: boolean
- doc: Specify the shape parameter for a discrete gamma model.
  id: gamma_alpha
  inputBinding:
    prefix: --gamma-alpha
  type: boolean
- doc: '1st stage branch len optimization tolerance (2nd stage to 1e-5). Default:
    0.01.'
  id: ml_tolerance
  inputBinding:
    prefix: --ml-tolerance
  type: boolean
- doc: Relative error for the posterior probability calculation. Default is 0.01.
  id: pp_rel_err
  inputBinding:
    prefix: --pp-rel-err
  type: boolean
- doc: Use a uniform prior rather than exponential.
  id: unif_prior
  inputBinding:
    prefix: --unif-prior
  type: boolean
- doc: Use an informative exponential prior based on rooted distance to leaves.
  id: inform_prior
  inputBinding:
    prefix: --inform-prior
  type: boolean
- doc: Lower bound for the informative prior mean. Default is 0.
  id: prior_lower
  inputBinding:
    prefix: --prior-lower
  type: boolean
- doc: Starting pendant branch length. Default is 0.1.
  id: start_pend
  inputBinding:
    prefix: --start-pend
  type: boolean
- doc: Set the maximum ML pendant branch length. Default is 2.
  id: max_pend
  inputBinding:
    prefix: --max-pend
  type: boolean
- doc: The cutoff for determining figs. Default is 0; specify 0 to disable.
  id: fig_cut_off
  inputBinding:
    prefix: --fig-cutoff
  type: boolean
- doc: Evaluate all likelihoods to ensure that the best location was selected.
  id: fig_eval_all
  inputBinding:
    prefix: --fig-eval-all
  type: boolean
- doc: Write out a tree showing the discrepancies between the best complete and observed
    locations.
  id: fig_eval_discrepancy_tree
  inputBinding:
    prefix: --fig-eval-discrepancy-tree
  type: boolean
- doc: Write out a tree showing the figs on the tree.
  id: fig_tree
  inputBinding:
    prefix: --fig-tree
  type: boolean
- doc: Maximum number of strikes for baseball. 0 -> no ball playing. Default is 6.
  id: max_strikes
  inputBinding:
    prefix: --max-strikes
  type: boolean
- doc: Set the size of the strike box in log likelihood units. Default is 3.
  id: strike_box
  inputBinding:
    prefix: --strike-box
  type: boolean
- doc: Set the maximum number of pitches for baseball. Default is 40.
  id: max_pitches
  inputBinding:
    prefix: --max-pitches
  type: boolean
- doc: Desired likelihood cutoff for fantasy baseball mode. 0 -> no fantasy.
  id: fantasy
  inputBinding:
    prefix: --fantasy
  type: boolean
- doc: Fraction of fragments to use when running fantasy baseball. Default is 0.1.
  id: fantasy_frac
  inputBinding:
    prefix: --fantasy-frac
  type: boolean
- doc: Write alignment masked to the region without gaps in the query.
  id: write_masked
  inputBinding:
    prefix: --write-masked
  type: boolean
- doc: Set verbosity level. 0 is silent, and 2 is quite a lot. Default is 1.
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: Specify the directory to write place files to.
  id: out_dir
  inputBinding:
    prefix: --out-dir
  type: boolean
- doc: Specify the output file name
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Only check out the files then report. Do not run the analysis.
  id: pretend
  inputBinding:
    prefix: --pretend
  type: boolean
- doc: Write out the likelihood of the reference tree, calculated two ways.
  id: check_like
  inputBinding:
    prefix: --check-like
  type: boolean
- doc: The number of child processes to spawn when doing placements. Default is 2.
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: Display timing information after the pplacer run finishes.
  id: timing
  inputBinding:
    prefix: --timing
  type: boolean
- doc: Don't pre-mask sequences before placement.
  id: no_pre_mask
  inputBinding:
    prefix: --no-pre-mask
  type: boolean
- doc: Write out the pre-masked sequences to the specified fasta file before placement.
  id: write_pre_masked
  inputBinding:
    prefix: --write-pre-masked
  type: boolean
- doc: Specify a file to write out MAP sequences for MRCAs and corresponding placements.
  id: map_mrca
  inputBinding:
    prefix: --map-mrca
  type: boolean
- doc: Specify cutoff for inclusion in MAP sequence file. Default is 0.8.
  id: map_mrca_min
  inputBinding:
    prefix: --map-mrca-min
  type: boolean
- doc: Add the percent identity of the query sequence to the nearest MAP sequence
    to each placement.
  id: map_identity
  inputBinding:
    prefix: --map-identity
  type: boolean
- doc: The maximum number of placements we keep. Default is 7.
  id: keep_at_most
  inputBinding:
    prefix: --keep-at-most
  type: boolean
- doc: Throw away anything that has ml_ratio below keep_factor times (best ml_ratio).
    Default is 0.01.
  id: keep_factor
  inputBinding:
    prefix: --keep-factor
  type: boolean
- doc: Classify with MRCAs instead of a painted tree.
  id: mrca_class
  inputBinding:
    prefix: --mrca-class
  type: boolean
- doc: Split query alignment into the specified number of groups.
  id: groups
  inputBinding:
    prefix: --groups
  type: boolean
- doc: Always refine the model before placing.
  id: always_refine
  inputBinding:
    prefix: --always-refine
  type: boolean
- doc: Instead of doing large allocations, mmap the given file. It will be created
    if it doesn't exist.
  id: mmap_file
  inputBinding:
    prefix: --mmap-file
  type: boolean
- doc: When pre-masking, silently discard sequences which don't overlap the mask.
  id: discard_non_overlapped
  inputBinding:
    prefix: --discard-nonoverlapped
  type: boolean
- doc: Display this list of options
  id: help
  inputBinding:
    prefix: --help
  type: boolean
