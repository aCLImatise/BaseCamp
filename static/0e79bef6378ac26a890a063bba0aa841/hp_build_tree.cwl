class: CommandLineTool
id: hp_build_tree.cwl
inputs:
- id: seqs
  doc: Input alignment in PHYLIP or FASTA format
  type: string
  inputBinding:
    prefix: --seqs
- id: data_type
  doc: 'type of data: NUC, AA, BIN, or MULTI (default: NUC)'
  type: string
  inputBinding:
    prefix: --data_type
- id: output_name
  doc: Run name for trees
  type: string
  inputBinding:
    prefix: --output_name
- id: model
  doc: substitution model
  type: string
  inputBinding:
    prefix: --model
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: run_full_analysis
  doc: 'Run bootstrap search and find best ML tree (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_full_analysis
- id: out_group
  doc: outgroup for tree
  type: string
  inputBinding:
    prefix: --outgroup
- id: parsimony_seed
  doc: Parsimony Random Seed
  type: string
  inputBinding:
    prefix: --parsimony_seed
- id: wgt_file
  doc: Column weight file name to assign individual weights to each column of the
    alignment
  type: string
  inputBinding:
    prefix: --wgtFile
- id: sec_sub
  doc: Specify secondary structure substitution models, must also include file defining
    the secondary structure
  type: string
  inputBinding:
    prefix: --secsub
- id: bootstrap
  doc: bootstrapRandomNumberSeed for non-parametric bootstrapping
  type: string
  inputBinding:
    prefix: --bootstrap
- id: bootstrap_threshold
  doc: threshold for bootstopping criteria
  type: string
  inputBinding:
    prefix: --bootstrap_threshold
- id: num_cat
  doc: number of distinct rate categories for RAxML when model of rate heterogeneity
    is set to CAT
  type: string
  inputBinding:
    prefix: --numCat
- id: rand_starting_tree
  doc: 'ML optimization from random starting tree (default: False)'
  type: boolean
  inputBinding:
    prefix: --rand_starting_tree
- id: convergence_criterion
  doc: 'ML search convergence criterion (default: False)'
  type: boolean
  inputBinding:
    prefix: --convergence_criterion
- id: likelihood_epsilon
  doc: set model optimization precision in log likelihood units for final optimization
    of tree topology
  type: string
  inputBinding:
    prefix: --likelihoodEpsilon
- id: exclude_filename
  doc: file contains specifications of alignment positions to be excluded
  type: string
  inputBinding:
    prefix: --excludeFileName
- id: algo_option
  doc: select what kind of algorithm RAxML shall execute
  type: string
  inputBinding:
    prefix: --algo_option
- id: cat_model
  doc: 'enable ML tree searches under CAT model for very large trees (default: False)'
  type: boolean
  inputBinding:
    prefix: --cat_model
- id: grouping_file
  doc: file name of a multifurcating constraint tree
  type: string
  inputBinding:
    prefix: --groupingFile
- id: placement_threshold
  doc: threshold value for ML­based evolutionary placement algorithm heuristics
  type: string
  inputBinding:
    prefix: --placementThreshold
- id: disable_pattern_compression
  doc: 'disable pattern compression (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable_pattern_compression
- id: initial_rearrangement
  doc: radius for pruned sub-tree re-insertion
  type: string
  inputBinding:
    prefix: --InitialRearrangement
- id: posteriori
  doc: posteriori bootstopping analysis
  type: string
  inputBinding:
    prefix: --posteriori
- id: print_intermediate_trees
  doc: 'print out a couple of intermediate trees (default: False)'
  type: boolean
  inputBinding:
    prefix: --print_intermediate_trees
- id: majority_rule
  doc: Compute majority rule consensus tree
  type: string
  inputBinding:
    prefix: --majorityrule
- id: print_branch_length
  doc: 'bootstrapped trees should be printed with branch lengths (default: False)'
  type: boolean
  inputBinding:
    prefix: --print_branch_length
- id: ictc_metrics
  doc: compute the TC and IC metrics on a consensus tree
  type: string
  inputBinding:
    prefix: --ICTCmetrics
- id: partition_branch_length
  doc: 'Switch on estimation of individual per­partition branch lengths (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --partition_branch_length
- id: disable_check
  doc: 'Disable check for completely undetermined sequence in alignment (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --disable_check
- id: aa_model
  doc: Specify the file name of a user­defined AA (Protein) substitution model
  type: string
  inputBinding:
    prefix: --AAmodel
- id: multiple_model_file
  doc: Specify the file name which contains the assignment of models to alignment
    partitions for multiple models of substitution
  type: string
  inputBinding:
    prefix: --multiplemodelFile
- id: binary_tree
  doc: Specify the file name of a binary constraint tree
  type: string
  inputBinding:
    prefix: --binarytree
- id: binary_parameter_file
  doc: Specify the file name of a binary model parameter file that has previously
    been generated with RAxML using the ­f e tree evaluation option.
  type: string
  inputBinding:
    prefix: --BinaryParameterFile
- id: secondary_structure
  doc: Specify the name of a secondary structure file
  type: string
  inputBinding:
    prefix: --SecondaryStructure
- id: user_starting_tree
  doc: Specifies a user starting tree file name which must be in Newick format
  type: string
  inputBinding:
    prefix: --UserStartingTree
- id: median_gamma
  doc: 'use the median for the discrete approximation of the GAMMA model of rateheterogeneity
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --median_GAMMA
- id: version_info
  doc: 'Display version information (default: False)'
  type: boolean
  inputBinding:
    prefix: --version_info
- id: rate_heterogeneity
  doc: 'Disable rate heterogeneity among site model and use one without rate heterogeneity
    instead (default: False)'
  type: boolean
  inputBinding:
    prefix: --rate_heterogeneity
- id: directory
  doc: Full directory of output file
  type: Directory
  inputBinding:
    prefix: --directory
- id: window
  doc: Sliding window size for leave­one­out site­specific placement bias algorithm
  type: string
  inputBinding:
    prefix: --window
- id: rapid_bootstrap_num_seed
  doc: Specify an integer number (random seed) and turn on rapid bootstrapping
  type: string
  inputBinding:
    prefix: --RapidBootstrapNumSeed
- id: random_addition
  doc: 'RAxML will only do a randomized stepwise addition order parsimony tree reconstruction
    without performing any additional SPRs (default: False)'
  type: boolean
  inputBinding:
    prefix: --random_addition
- id: starting_tree
  doc: 'Only for computing parsimony (default: False)'
  type: boolean
  inputBinding:
    prefix: --starting_tree
- id: quartet_grouping_filename
  doc: Pass a quartet grouping file name defining four groups from which to draw quartets
  type: string
  inputBinding:
    prefix: --quartetGroupingFileName
- id: multiple_tree_file
  doc: Specify the file name of a file containing multiple trees e.g. from a bootstrap
    that shall be used to draw bipartition values onto a tree provided with ­t.
  type: string
  inputBinding:
    prefix: --multipleTreeFile
- id: number_of_runs
  doc: Specify the number of alternative runs on distinct starting trees
  type: string
  inputBinding:
    prefix: --NumberofRuns
- id: mesquite
  doc: 'Print output files that can be parsed by Mesquite (default: False)'
  type: boolean
  inputBinding:
    prefix: --mesquite
- id: silent
  doc: 'Disables printout of warnings related to identical sequences and entirely
    undetermined sites in the alignment (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
- id: no_seq_check
  doc: 'Disables checking the input MSA for identical sequences and entirely undetermined
    sites (default: False)'
  type: boolean
  inputBinding:
    prefix: --noseqcheck
- id: no_bfgs
  doc: 'Disables automatic usage of BFGS method to optimize GTR rates on unpartitioned
    DNA datasets (default: False)'
  type: boolean
  inputBinding:
    prefix: --nobfgs
- id: epa_place_num
  doc: specify the number of potential placements you want to keep for each read in
    the EPA algorithm
  type: string
  inputBinding:
    prefix: --epaPlaceNum
- id: epa_prob_threshold
  doc: specify a percent threshold for including potential placements of a read depending
    on the maximum placement weight for this read
  type: string
  inputBinding:
    prefix: --epaProbThreshold
- id: epa_likelihood
  doc: Specify an accumulated likelihood weight threshold
  type: string
  inputBinding:
    prefix: --epaLikelihood
- id: hky85
  doc: 'specify that all DNA partitions will evolve under the HKY85 model (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --HKY85
- id: bootstrapper_m
  doc: specify the number of permutations to be conducted for the bootstopping/bootstrap
    convergence test; minimum 100
  type: string
  inputBinding:
    prefix: --BootstrapPerm
- id: option_help
  doc: 'Display Help (default: False)'
  type: boolean
  inputBinding:
    prefix: --option_help
- id: keep_tmp
  doc: 'Keep temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_build_tree
