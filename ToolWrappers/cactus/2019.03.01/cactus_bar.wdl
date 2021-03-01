version 1.0

task CactusBar {
  input {
    Boolean? loglevel
    Boolean? cactus_disk
    Boolean? spanning_tree_s
    Boolean? maximum_length
    Boolean? use_banding
    Boolean? gap_gamma
    Boolean? match_gamma
    Boolean? split_matrix_bigger_than_this
    Boolean? anchor_matrix_bigger_than_this
    Boolean? repeat_mask_matrix_bigger_than_this
    Boolean? dig_a_onal_expansion
    Boolean? constraint_diagonal_trim
    Boolean? minimum_degree
    Boolean? align_ambiguity_characters
    Boolean? prune_out_stub_alignments
    Boolean? minimum_in_group_degree
    Boolean? minimum_out_group_degree
    Boolean? precomputed_alignments
    File? end_alignments_to_precompute_output_file
    Boolean? use_progressive_merging
    Boolean? calculate_which_ends_to_compute_separately
    Boolean? large_end_size
    Boolean? in_group_coverage_file
    Boolean? minimum_size_to_rescue
    Boolean? minimum_coverage_to_rescue
  }
  command <<<
    cactus_bar \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (cactus_disk) then "--cactusDisk" else ""} \
      ~{if (spanning_tree_s) then "--spanningTrees" else ""} \
      ~{if (maximum_length) then "--maximumLength" else ""} \
      ~{if (use_banding) then "--useBanding" else ""} \
      ~{if (gap_gamma) then "--gapGamma" else ""} \
      ~{if (match_gamma) then "--matchGamma" else ""} \
      ~{if (split_matrix_bigger_than_this) then "--splitMatrixBiggerThanThis" else ""} \
      ~{if (anchor_matrix_bigger_than_this) then "--anchorMatrixBiggerThanThis" else ""} \
      ~{if (repeat_mask_matrix_bigger_than_this) then "--repeatMaskMatrixBiggerThanThis" else ""} \
      ~{if (dig_a_onal_expansion) then "--digaonalExpansion" else ""} \
      ~{if (constraint_diagonal_trim) then "--constraintDiagonalTrim" else ""} \
      ~{if (minimum_degree) then "--minimumDegree" else ""} \
      ~{if (align_ambiguity_characters) then "--alignAmbiguityCharacters" else ""} \
      ~{if (prune_out_stub_alignments) then "--pruneOutStubAlignments" else ""} \
      ~{if (minimum_in_group_degree) then "--minimumIngroupDegree" else ""} \
      ~{if (minimum_out_group_degree) then "--minimumOutgroupDegree" else ""} \
      ~{if (precomputed_alignments) then "--precomputedAlignments" else ""} \
      ~{if (end_alignments_to_precompute_output_file) then "--endAlignmentsToPrecomputeOutputFile" else ""} \
      ~{if (use_progressive_merging) then "--useProgressiveMerging" else ""} \
      ~{if (calculate_which_ends_to_compute_separately) then "--calculateWhichEndsToComputeSeparately" else ""} \
      ~{if (large_end_size) then "--largeEndSize" else ""} \
      ~{if (in_group_coverage_file) then "--ingroupCoverageFile" else ""} \
      ~{if (minimum_size_to_rescue) then "--minimumSizeToRescue" else ""} \
      ~{if (minimum_coverage_to_rescue) then "--minimumCoverageToRescue" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    cactus_disk: ": The location of the flower disk directory"
    spanning_tree_s: "(int >= 0) : The number of spanning trees construct in forming the set of pairwise alignments to include. If the number of pairwise alignments is less than the product of the total number of sequences and the number of spanning trees then all pairwise alignments will be included."
    maximum_length: "(int  >= 0 ) : The maximum length of a sequence to align, only the prefix and suffix maximum length bases are aligned"
    use_banding: ": Use banding to speed up the alignments"
    gap_gamma: ": (float >= 0) The gap gamma (as in the AMAP function)"
    match_gamma: ": (float [0, 1]) The match gamma (the avg. weight or greater to be allowed in the alignment)"
    split_matrix_bigger_than_this: ": (int >= 0)  No dp matrix bigger than this number squared will be computed."
    anchor_matrix_bigger_than_this: ": (int >= 0)  Any matrix bigger than this number squared will be broken apart with banding."
    repeat_mask_matrix_bigger_than_this: ": (int >= 0) Any matrix bigger than this after initial banding will be broken apart without repeat masking of the sequences"
    dig_a_onal_expansion: ": (int >= 0 and even) Number of x-y diagonals to expand around anchors"
    constraint_diagonal_trim: ": (int >= 0) Amount to trim from ends of each anchor"
    minimum_degree: ": (int >= 0) Minimum number of sequences in a block to be included in the output graph"
    align_ambiguity_characters: ": Align ambiguity characters (anything not ACTGactg) as a wildcard"
    prune_out_stub_alignments: ": Prune out alignments of sequences that terminates in free stubs stubs"
    minimum_in_group_degree: ": Number of ingroup sequences required in a block."
    minimum_out_group_degree: ": Number of outgroup sequences required in a block."
    precomputed_alignments: ": Precomputed end alignments."
    end_alignments_to_precompute_output_file: "[fileName] : If this output file is provided then bar will read stdin first to parse the flower, then to parse the names of the end alignments to precompute. The results will be placed in this file."
    use_progressive_merging: ": Use progressive merging instead of poset merging for constructing multiple sequence alignments."
    calculate_which_ends_to_compute_separately: ": Decide which end alignments to compute separately."
    large_end_size: ": The size of sequences in an end at which point to compute it separately."
    in_group_coverage_file: ": Binary coverage file containing ingroup regions that are covered by outgroups. These regions will be 'rescued' into single-degree blocks if they haven't been aligned to anything after the bar phase finished."
    minimum_size_to_rescue: ": Unaligned but covered segments must be at least this size to be rescued."
    minimum_coverage_to_rescue: ": Unaligned segments must have at least this proportion of their bases covered by an outgroup to be rescued."
  }
  output {
    File out_stdout = stdout()
    File out_end_alignments_to_precompute_output_file = "${in_end_alignments_to_precompute_output_file}"
  }
}