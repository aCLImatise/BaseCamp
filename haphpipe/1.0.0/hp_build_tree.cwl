#!/usr/bin/env cwl-runner

baseCommand:
- hp_build_tree
class: CommandLineTool
cwlVersion: v1.0
id: hp_build_tree
inputs:
- doc: Input alignment in PHYLIP or FASTA format
  id: seqs
  inputBinding:
    prefix: --seqs
  type: string
- doc: 'type of data: NUC, AA, BIN, or MULTI (default: NUC)'
  id: data_type
  inputBinding:
    prefix: --data_type
  type: string
- doc: Run name for trees
  id: output_name
  inputBinding:
    prefix: --output_name
  type: string
- doc: substitution model
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Run bootstrap search and find best ML tree (default: False)'
  id: run_full_analysis
  inputBinding:
    prefix: --run_full_analysis
  type: boolean
- doc: outgroup for tree
  id: out_group
  inputBinding:
    prefix: --outgroup
  type: string
- doc: Parsimony Random Seed
  id: parsimony_seed
  inputBinding:
    prefix: --parsimony_seed
  type: string
- doc: Column weight file name to assign individual weights to each column of the
    alignment
  id: wgt_file
  inputBinding:
    prefix: --wgtFile
  type: string
- doc: Specify secondary structure substitution models, must also include file defining
    the secondary structure
  id: sec_sub
  inputBinding:
    prefix: --secsub
  type: string
- doc: bootstrapRandomNumberSeed for non-parametric bootstrapping
  id: bootstrap
  inputBinding:
    prefix: --bootstrap
  type: string
- doc: threshold for bootstopping criteria
  id: bootstrap_threshold
  inputBinding:
    prefix: --bootstrap_threshold
  type: string
- doc: number of distinct rate categories for RAxML when model of rate heterogeneity
    is set to CAT
  id: num_cat
  inputBinding:
    prefix: --numCat
  type: string
- doc: 'ML optimization from random starting tree (default: False)'
  id: rand_starting_tree
  inputBinding:
    prefix: --rand_starting_tree
  type: boolean
- doc: 'ML search convergence criterion (default: False)'
  id: convergence_criterion
  inputBinding:
    prefix: --convergence_criterion
  type: boolean
- doc: set model optimization precision in log likelihood units for final optimization
    of tree topology
  id: likelihood_epsilon
  inputBinding:
    prefix: --likelihoodEpsilon
  type: string
- doc: file contains specifications of alignment positions to be excluded
  id: exclude_filename
  inputBinding:
    prefix: --excludeFileName
  type: string
- doc: select what kind of algorithm RAxML shall execute
  id: algo_option
  inputBinding:
    prefix: --algo_option
  type: string
- doc: 'enable ML tree searches under CAT model for very large trees (default: False)'
  id: cat_model
  inputBinding:
    prefix: --cat_model
  type: boolean
- doc: file name of a multifurcating constraint tree
  id: grouping_file
  inputBinding:
    prefix: --groupingFile
  type: string
- doc: "threshold value for ML\xADbased evolutionary placement algorithm heuristics"
  id: placement_threshold
  inputBinding:
    prefix: --placementThreshold
  type: string
- doc: 'disable pattern compression (default: False)'
  id: disable_pattern_compression
  inputBinding:
    prefix: --disable_pattern_compression
  type: boolean
- doc: radius for pruned sub-tree re-insertion
  id: initial_rearrangement
  inputBinding:
    prefix: --InitialRearrangement
  type: string
- doc: posteriori bootstopping analysis
  id: posteriori
  inputBinding:
    prefix: --posteriori
  type: string
- doc: 'print out a couple of intermediate trees (default: False)'
  id: print_intermediate_trees
  inputBinding:
    prefix: --print_intermediate_trees
  type: boolean
- doc: Compute majority rule consensus tree
  id: majority_rule
  inputBinding:
    prefix: --majorityrule
  type: string
- doc: 'bootstrapped trees should be printed with branch lengths (default: False)'
  id: print_branch_length
  inputBinding:
    prefix: --print_branch_length
  type: boolean
- doc: compute the TC and IC metrics on a consensus tree
  id: ictc_metrics
  inputBinding:
    prefix: --ICTCmetrics
  type: string
- doc: "Switch on estimation of individual per\xADpartition branch lengths (default:\
    \ False)"
  id: partition_branch_length
  inputBinding:
    prefix: --partition_branch_length
  type: boolean
- doc: 'Disable check for completely undetermined sequence in alignment (default:
    False)'
  id: disable_check
  inputBinding:
    prefix: --disable_check
  type: boolean
- doc: "Specify the file name of a user\xADdefined AA (Protein) substitution model"
  id: aa_model
  inputBinding:
    prefix: --AAmodel
  type: string
- doc: Specify the file name which contains the assignment of models to alignment
    partitions for multiple models of substitution
  id: multiple_model_file
  inputBinding:
    prefix: --multiplemodelFile
  type: string
- doc: Specify the file name of a binary constraint tree
  id: binary_tree
  inputBinding:
    prefix: --binarytree
  type: string
- doc: "Specify the file name of a binary model parameter file that has previously\
    \ been generated with RAxML using the \xADf e tree evaluation option."
  id: binary_parameter_file
  inputBinding:
    prefix: --BinaryParameterFile
  type: string
- doc: Specify the name of a secondary structure file
  id: secondary_structure
  inputBinding:
    prefix: --SecondaryStructure
  type: string
- doc: Specifies a user starting tree file name which must be in Newick format
  id: user_starting_tree
  inputBinding:
    prefix: --UserStartingTree
  type: string
- doc: 'use the median for the discrete approximation of the GAMMA model of rateheterogeneity
    (default: False)'
  id: median_gamma
  inputBinding:
    prefix: --median_GAMMA
  type: boolean
- doc: 'Display version information (default: False)'
  id: version_info
  inputBinding:
    prefix: --version_info
  type: boolean
- doc: 'Disable rate heterogeneity among site model and use one without rate heterogeneity
    instead (default: False)'
  id: rate_heterogeneity
  inputBinding:
    prefix: --rate_heterogeneity
  type: boolean
- doc: Full directory of output file
  id: directory
  inputBinding:
    prefix: --directory
  type: Directory
- doc: "Sliding window size for leave\xADone\xADout site\xADspecific placement bias\
    \ algorithm"
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Specify an integer number (random seed) and turn on rapid bootstrapping
  id: rapid_bootstrap_num_seed
  inputBinding:
    prefix: --RapidBootstrapNumSeed
  type: string
- doc: 'RAxML will only do a randomized stepwise addition order parsimony tree reconstruction
    without performing any additional SPRs (default: False)'
  id: random_addition
  inputBinding:
    prefix: --random_addition
  type: boolean
- doc: 'Only for computing parsimony (default: False)'
  id: starting_tree
  inputBinding:
    prefix: --starting_tree
  type: boolean
- doc: Pass a quartet grouping file name defining four groups from which to draw quartets
  id: quartet_grouping_filename
  inputBinding:
    prefix: --quartetGroupingFileName
  type: string
- doc: "Specify the file name of a file containing multiple trees e.g. from a bootstrap\
    \ that shall be used to draw bipartition values onto a tree provided with \xAD\
    t."
  id: multiple_tree_file
  inputBinding:
    prefix: --multipleTreeFile
  type: string
- doc: Specify the number of alternative runs on distinct starting trees
  id: number_of_runs
  inputBinding:
    prefix: --NumberofRuns
  type: string
- doc: 'Print output files that can be parsed by Mesquite (default: False)'
  id: mesquite
  inputBinding:
    prefix: --mesquite
  type: boolean
- doc: 'Disables printout of warnings related to identical sequences and entirely
    undetermined sites in the alignment (default: False)'
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: 'Disables checking the input MSA for identical sequences and entirely undetermined
    sites (default: False)'
  id: no_seq_check
  inputBinding:
    prefix: --noseqcheck
  type: boolean
- doc: 'Disables automatic usage of BFGS method to optimize GTR rates on unpartitioned
    DNA datasets (default: False)'
  id: no_bfgs
  inputBinding:
    prefix: --nobfgs
  type: boolean
- doc: specify the number of potential placements you want to keep for each read in
    the EPA algorithm
  id: epa_place_num
  inputBinding:
    prefix: --epaPlaceNum
  type: string
- doc: specify a percent threshold for including potential placements of a read depending
    on the maximum placement weight for this read
  id: epa_prob_threshold
  inputBinding:
    prefix: --epaProbThreshold
  type: string
- doc: Specify an accumulated likelihood weight threshold
  id: epa_likelihood
  inputBinding:
    prefix: --epaLikelihood
  type: string
- doc: 'specify that all DNA partitions will evolve under the HKY85 model (default:
    False)'
  id: hky85
  inputBinding:
    prefix: --HKY85
  type: boolean
- doc: specify the number of permutations to be conducted for the bootstopping/bootstrap
    convergence test; minimum 100
  id: bootstrapper_m
  inputBinding:
    prefix: --BootstrapPerm
  type: string
- doc: 'Display Help (default: False)'
  id: option_help
  inputBinding:
    prefix: --option_help
  type: boolean
- doc: 'Keep temporary directory (default: False)'
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Append console output to this file
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
