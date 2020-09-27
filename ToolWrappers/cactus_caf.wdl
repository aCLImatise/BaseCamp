version 1.0

task CactusCaf {
  input {
    Boolean? loglevel
    Boolean? alignments
    Boolean? cactus_disk
    Boolean? last_z_arguments
    Boolean? annealing_rounds
    Boolean? de_annealing_rounds
    Boolean? trim
    Boolean? minimum_tree_coverage
    Boolean? block_trim
    Boolean? minimum_degree
    Boolean? minimum_in_group_degree
    Boolean? minimum_out_group_degree
    Boolean? alignment_filter
    Boolean? minimum_sequence_length_for_blast
    Boolean? max_adjacency_component_size_ratio
    Boolean? constraints
    Boolean? minlength_for_chromosome
    Boolean? proportion_of_unaligned_bases_for_new_chromosome
    Boolean? maximum_median_sequence_length_between_linked_ends
    Boolean? realign
    Boolean? realign_arguments
    Boolean? phylogeny_num_trees
    Boolean? phylogeny_rooting_method
    Boolean? phylogeny_scoring_method
    Boolean? phylogeny_breakpoint_scaling_factor
    Boolean? phylogeny_skip_single_copy_blocks
    Boolean? phylogeny_max_base_distance
    Boolean? phylogeny_max_block_distance
    Boolean? phylogeny_debug_file
    Boolean? phylogeny_keep_single_degree_blocks
    Boolean? phylogeny_tree_building_method
    Boolean? reference_event_header
    Boolean? phylogeny_do_splits_with_support_higher_than_this_all_at_once
    Boolean? num_tree_building_threads
    Boolean? phylogeny
    Boolean? minimum_block_homology_support
    Boolean? phylogeny_nucleotide_scaling_factor
    Boolean? minimum_block_degree_to_check_support
  }
  command <<<
    cactus_caf \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (alignments) then "--alignments" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (last_z_arguments) then "--lastzArguments" else ""} \
      ~{if (annealing_rounds) then "--annealingRounds" else ""} \
      ~{if (de_annealing_rounds) then "--deannealingRounds" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (minimum_tree_coverage) then "--minimumTreeCoverage" else ""} \
      ~{if (block_trim) then "--blockTrim" else ""} \
      ~{if (minimum_degree) then "--minimumDegree" else ""} \
      ~{if (minimum_in_group_degree) then "--minimumIngroupDegree" else ""} \
      ~{if (minimum_out_group_degree) then "--minimumOutgroupDegree" else ""} \
      ~{if (alignment_filter) then "--alignmentFilter" else ""} \
      ~{if (minimum_sequence_length_for_blast) then "--minimumSequenceLengthForBlast" else ""} \
      ~{if (max_adjacency_component_size_ratio) then "--maxAdjacencyComponentSizeRatio" else ""} \
      ~{if (constraints) then "--constraints" else ""} \
      ~{if (minlength_for_chromosome) then "--minLengthForChromosome" else ""} \
      ~{if (proportion_of_unaligned_bases_for_new_chromosome) then "--proportionOfUnalignedBasesForNewChromosome" else ""} \
      ~{if (maximum_median_sequence_length_between_linked_ends) then "--maximumMedianSequenceLengthBetweenLinkedEnds" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (realign_arguments) then "--realignArguments" else ""} \
      ~{if (phylogeny_num_trees) then "--phylogenyNumTrees" else ""} \
      ~{if (phylogeny_rooting_method) then "--phylogenyRootingMethod" else ""} \
      ~{if (phylogeny_scoring_method) then "--phylogenyScoringMethod" else ""} \
      ~{if (phylogeny_breakpoint_scaling_factor) then "--phylogenyBreakpointScalingFactor" else ""} \
      ~{if (phylogeny_skip_single_copy_blocks) then "--phylogenySkipSingleCopyBlocks" else ""} \
      ~{if (phylogeny_max_base_distance) then "--phylogenyMaxBaseDistance" else ""} \
      ~{if (phylogeny_max_block_distance) then "--phylogenyMaxBlockDistance" else ""} \
      ~{if (phylogeny_debug_file) then "--phylogenyDebugFile" else ""} \
      ~{if (phylogeny_keep_single_degree_blocks) then "--phylogenyKeepSingleDegreeBlocks" else ""} \
      ~{if (phylogeny_tree_building_method) then "--phylogenyTreeBuildingMethod" else ""} \
      ~{if (reference_event_header) then "--referenceEventHeader" else ""} \
      ~{if (phylogeny_do_splits_with_support_higher_than_this_all_at_once) then "--phylogenyDoSplitsWithSupportHigherThanThisAllAtOnce" else ""} \
      ~{if (num_tree_building_threads) then "--numTreeBuildingThreads" else ""} \
      ~{if (phylogeny) then "--phylogeny" else ""} \
      ~{if (minimum_block_homology_support) then "--minimumBlockHomologySupport" else ""} \
      ~{if (phylogeny_nucleotide_scaling_factor) then "--phylogenyNucleotideScalingFactor" else ""} \
      ~{if (minimum_block_degree_to_check_support) then "--minimumBlockDegreeToCheckSupport" else ""}
  >>>
  parameter_meta {
    loglevel: ": Set the log level"
    alignments: ": The input alignments file"
    cactus_disk: ": The location of the flower disk directory"
    last_z_arguments: ": Lastz arguments"
    annealing_rounds: "(array of ints, each greater than or equal to 1) : The rounds of annealing"
    de_annealing_rounds: "(array of ints, each greater than or equal to 1 and each greater than the last) : The rounds of deannealing"
    trim: "(array of integers, each greater or equal to zero) : An array giving the trim for each annealing round. If the array is shorter than the annealing rounds then a trim value of 0 is assumed for annealing rounds greater than the length of the trim array"
    minimum_tree_coverage: ": (float [0.0, 1.0]) Minimum tree coverage proportion of a block to be included in the graph"
    block_trim: ": (int >= 0) The number of bases to trim from the ends of each block in a chain before accepting, this filtering is done after choosing the length of chains"
    minimum_degree: ": (int >= 0) Minimum number of sequences in a block to be included in the output graph"
    minimum_in_group_degree: ": Number of ingroup sequences required in a block."
    minimum_out_group_degree: ": Number of outgroup sequences required in a block."
    alignment_filter: ": Choose alignment filter:\\nnone: no filtering,\\nsingleCopyOutgroup: never merge two outgroup segments together\\nrelaxedSingleCopyOutgroup: never merge two outgroup segments together if they are both already aligned to something else\\nsingleCopy: Never align two segments from the same genome together\\nrelaxedSingleCopy: Never align two segments from the same genome together if they are both already aligned to something else\\nfilterSecondariesByMultipleSpecies: Apply no filtering to primary alignments, for secondary alignments do not sort them and filter them so that no two blocks are merged that each already contain multiple species."
    minimum_sequence_length_for_blast: ": The minimum length of a sequence to include when blasting"
    max_adjacency_component_size_ratio: ": The components equal or less than log(n) * of this size will be allowed in the cactus. Used to fight giant components."
    constraints: ": A file of alignments that will be enforced upon the cactus"
    minlength_for_chromosome: ": The minimum length required for a sequence to be considered as a candidate to be chromosome."
    proportion_of_unaligned_bases_for_new_chromosome: ": Proportion of aligned bases to be not contained in an existing chromosome to cause generation of a new chromosome."
    maximum_median_sequence_length_between_linked_ends: ": Maximum nedian length of sequences between linked ends to allow before breaking chains."
    realign: ": Realign the lastz hits."
    realign_arguments: ": Arguments for realignment."
    phylogeny_num_trees: ": Number of trees to sample when removing ancient homologies. (default 1)"
    phylogeny_rooting_method: ": Method of rooting trees: either 'outgroupBranch', 'longestBranch', or 'bestRecon' (default outgroupBranch)."
    phylogeny_scoring_method: ": Method of deciding which sampled tree is best: either 'reconCost' or ."
    phylogeny_breakpoint_scaling_factor: ": scale breakpoint distance by this factor while building phylogenies. Default 0.0."
    phylogeny_skip_single_copy_blocks: ": Skip building trees for single-copy blocks. Default is not to skip."
    phylogeny_max_base_distance: ": maximum distance in bases to walk outside of a block gathering feature columns"
    phylogeny_max_block_distance: ": maximum distance in blocks to walk outside of a block gathering feature columns"
    phylogeny_debug_file: ": path to file to dump block trees and partitions to"
    phylogeny_keep_single_degree_blocks: ": when splitting blocks, allow blocks to be created of only one ingroup."
    phylogeny_tree_building_method: ": neighbor joining or neighbor-joining guided by the species tree"
    reference_event_header: ": name of reference event (necessary for phylogeny estimation)"
    phylogeny_do_splits_with_support_higher_than_this_all_at_once: ": assume that this support value or greater means a very confident split, and that they will not be changed by the greedy split algorithm. Do all these very confident splits at once, to save a lot of computation time."
    num_tree_building_threads: ": Number of threads in the tree-building thread pool. Must be greater than 1. Default 2."
    phylogeny: ": Run the tree-building code and split ancient homologies away."
    minimum_block_homology_support: ": Minimum fraction of possible homologies required not to be considered a transitively collapsed megablock."
    phylogeny_nucleotide_scaling_factor: ": Weighting for the nucleotide information in the distance matrix used to build each tree."
    minimum_block_degree_to_check_support: ": Minimum degree required to be checked for being a megablock."
  }
  output {
    File out_stdout = stdout()
  }
}