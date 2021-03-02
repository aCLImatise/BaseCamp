class: CommandLineTool
id: cactus_caf.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_alignments
  doc: ': The input alignments file'
  type: boolean?
  inputBinding:
    prefix: --alignments
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean?
  inputBinding:
    prefix: --cactusDisk
- id: in_last_z_arguments
  doc: ': Lastz arguments'
  type: boolean?
  inputBinding:
    prefix: --lastzArguments
- id: in_annealing_rounds
  doc: '(array of ints, each greater than or equal to 1) : The rounds of annealing'
  type: boolean?
  inputBinding:
    prefix: --annealingRounds
- id: in_de_annealing_rounds
  doc: '(array of ints, each greater than or equal to 1 and each greater than the
    last) : The rounds of deannealing'
  type: boolean?
  inputBinding:
    prefix: --deannealingRounds
- id: in_trim
  doc: '(array of integers, each greater or equal to zero) : An array giving the trim
    for each annealing round. If the array is shorter than the annealing rounds then
    a trim value of 0 is assumed for annealing rounds greater than the length of the
    trim array'
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_minimum_tree_coverage
  doc: ': (float [0.0, 1.0]) Minimum tree coverage proportion of a block to be included
    in the graph'
  type: boolean?
  inputBinding:
    prefix: --minimumTreeCoverage
- id: in_block_trim
  doc: ': (int >= 0) The number of bases to trim from the ends of each block in a
    chain before accepting, this filtering is done after choosing the length of chains'
  type: boolean?
  inputBinding:
    prefix: --blockTrim
- id: in_minimum_degree
  doc: ': (int >= 0) Minimum number of sequences in a block to be included in the
    output graph'
  type: boolean?
  inputBinding:
    prefix: --minimumDegree
- id: in_minimum_in_group_degree
  doc: ': Number of ingroup sequences required in a block.'
  type: boolean?
  inputBinding:
    prefix: --minimumIngroupDegree
- id: in_minimum_out_group_degree
  doc: ': Number of outgroup sequences required in a block.'
  type: boolean?
  inputBinding:
    prefix: --minimumOutgroupDegree
- id: in_alignment_filter
  doc: ": Choose alignment filter:\nnone: no filtering,\nsingleCopyOutgroup: never\
    \ merge two outgroup segments together\nrelaxedSingleCopyOutgroup: never merge\
    \ two outgroup segments together if they are both already aligned to something\
    \ else\nsingleCopy: Never align two segments from the same genome together\nrelaxedSingleCopy:\
    \ Never align two segments from the same genome together if they are both already\
    \ aligned to something else\nfilterSecondariesByMultipleSpecies: Apply no filtering\
    \ to primary alignments, for secondary alignments do not sort them and filter\
    \ them so that no two blocks are merged that each already contain multiple species."
  type: boolean?
  inputBinding:
    prefix: --alignmentFilter
- id: in_minimum_sequence_length_for_blast
  doc: ': The minimum length of a sequence to include when blasting'
  type: boolean?
  inputBinding:
    prefix: --minimumSequenceLengthForBlast
- id: in_max_adjacency_component_size_ratio
  doc: ': The components equal or less than log(n) * of this size will be allowed
    in the cactus. Used to fight giant components.'
  type: boolean?
  inputBinding:
    prefix: --maxAdjacencyComponentSizeRatio
- id: in_constraints
  doc: ': A file of alignments that will be enforced upon the cactus'
  type: boolean?
  inputBinding:
    prefix: --constraints
- id: in_minlength_for_chromosome
  doc: ': The minimum length required for a sequence to be considered as a candidate
    to be chromosome.'
  type: boolean?
  inputBinding:
    prefix: --minLengthForChromosome
- id: in_proportion_of_unaligned_bases_for_new_chromosome
  doc: ': Proportion of aligned bases to be not contained in an existing chromosome
    to cause generation of a new chromosome.'
  type: boolean?
  inputBinding:
    prefix: --proportionOfUnalignedBasesForNewChromosome
- id: in_maximum_median_sequence_length_between_linked_ends
  doc: ': Maximum nedian length of sequences between linked ends to allow before breaking
    chains.'
  type: boolean?
  inputBinding:
    prefix: --maximumMedianSequenceLengthBetweenLinkedEnds
- id: in_realign
  doc: ': Realign the lastz hits.'
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_realign_arguments
  doc: ': Arguments for realignment.'
  type: boolean?
  inputBinding:
    prefix: --realignArguments
- id: in_phylogeny_num_trees
  doc: ': Number of trees to sample when removing ancient homologies. (default 1)'
  type: boolean?
  inputBinding:
    prefix: --phylogenyNumTrees
- id: in_phylogeny_rooting_method
  doc: ": Method of rooting trees: either 'outgroupBranch', 'longestBranch', or 'bestRecon'\
    \ (default outgroupBranch)."
  type: boolean?
  inputBinding:
    prefix: --phylogenyRootingMethod
- id: in_phylogeny_scoring_method
  doc: ": Method of deciding which sampled tree is best: either 'reconCost' or ."
  type: boolean?
  inputBinding:
    prefix: --phylogenyScoringMethod
- id: in_phylogeny_breakpoint_scaling_factor
  doc: ': scale breakpoint distance by this factor while building phylogenies. Default
    0.0.'
  type: boolean?
  inputBinding:
    prefix: --phylogenyBreakpointScalingFactor
- id: in_phylogeny_skip_single_copy_blocks
  doc: ': Skip building trees for single-copy blocks. Default is not to skip.'
  type: boolean?
  inputBinding:
    prefix: --phylogenySkipSingleCopyBlocks
- id: in_phylogeny_max_base_distance
  doc: ': maximum distance in bases to walk outside of a block gathering feature columns'
  type: boolean?
  inputBinding:
    prefix: --phylogenyMaxBaseDistance
- id: in_phylogeny_max_block_distance
  doc: ': maximum distance in blocks to walk outside of a block gathering feature
    columns'
  type: boolean?
  inputBinding:
    prefix: --phylogenyMaxBlockDistance
- id: in_phylogeny_debug_file
  doc: ': path to file to dump block trees and partitions to'
  type: boolean?
  inputBinding:
    prefix: --phylogenyDebugFile
- id: in_phylogeny_keep_single_degree_blocks
  doc: ': when splitting blocks, allow blocks to be created of only one ingroup.'
  type: boolean?
  inputBinding:
    prefix: --phylogenyKeepSingleDegreeBlocks
- id: in_phylogeny_tree_building_method
  doc: ': neighbor joining or neighbor-joining guided by the species tree'
  type: boolean?
  inputBinding:
    prefix: --phylogenyTreeBuildingMethod
- id: in_reference_event_header
  doc: ': name of reference event (necessary for phylogeny estimation)'
  type: boolean?
  inputBinding:
    prefix: --referenceEventHeader
- id: in_phylogeny_do_splits_with_support_higher_than_this_all_at_once
  doc: ': assume that this support value or greater means a very confident split,
    and that they will not be changed by the greedy split algorithm. Do all these
    very confident splits at once, to save a lot of computation time.'
  type: boolean?
  inputBinding:
    prefix: --phylogenyDoSplitsWithSupportHigherThanThisAllAtOnce
- id: in_num_tree_building_threads
  doc: ': Number of threads in the tree-building thread pool. Must be greater than
    1. Default 2.'
  type: boolean?
  inputBinding:
    prefix: --numTreeBuildingThreads
- id: in_phylogeny
  doc: ': Run the tree-building code and split ancient homologies away.'
  type: boolean?
  inputBinding:
    prefix: --phylogeny
- id: in_minimum_block_homology_support
  doc: ': Minimum fraction of possible homologies required not to be considered a
    transitively collapsed megablock.'
  type: boolean?
  inputBinding:
    prefix: --minimumBlockHomologySupport
- id: in_phylogeny_nucleotide_scaling_factor
  doc: ': Weighting for the nucleotide information in the distance matrix used to
    build each tree.'
  type: boolean?
  inputBinding:
    prefix: --phylogenyNucleotideScalingFactor
- id: in_minimum_block_degree_to_check_support
  doc: ': Minimum degree required to be checked for being a megablock.'
  type: boolean?
  inputBinding:
    prefix: --minimumBlockDegreeToCheckSupport
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_caf
