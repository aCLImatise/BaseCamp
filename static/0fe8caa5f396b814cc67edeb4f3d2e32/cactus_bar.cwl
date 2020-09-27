class: CommandLineTool
id: cactus_bar.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_spanning_tree_s
  doc: '(int >= 0) : The number of spanning trees construct in forming the set of
    pairwise alignments to include. If the number of pairwise alignments is less than
    the product of the total number of sequences and the number of spanning trees
    then all pairwise alignments will be included.'
  type: boolean
  inputBinding:
    prefix: --spanningTrees
- id: in_maximum_length
  doc: '(int  >= 0 ) : The maximum length of a sequence to align, only the prefix
    and suffix maximum length bases are aligned'
  type: boolean
  inputBinding:
    prefix: --maximumLength
- id: in_use_banding
  doc: ': Use banding to speed up the alignments'
  type: boolean
  inputBinding:
    prefix: --useBanding
- id: in_gap_gamma
  doc: ': (float >= 0) The gap gamma (as in the AMAP function)'
  type: boolean
  inputBinding:
    prefix: --gapGamma
- id: in_match_gamma
  doc: ': (float [0, 1]) The match gamma (the avg. weight or greater to be allowed
    in the alignment)'
  type: boolean
  inputBinding:
    prefix: --matchGamma
- id: in_split_matrix_bigger_than_this
  doc: ': (int >= 0)  No dp matrix bigger than this number squared will be computed.'
  type: boolean
  inputBinding:
    prefix: --splitMatrixBiggerThanThis
- id: in_anchor_matrix_bigger_than_this
  doc: ': (int >= 0)  Any matrix bigger than this number squared will be broken apart
    with banding.'
  type: boolean
  inputBinding:
    prefix: --anchorMatrixBiggerThanThis
- id: in_repeat_mask_matrix_bigger_than_this
  doc: ': (int >= 0) Any matrix bigger than this after initial banding will be broken
    apart without repeat masking of the sequences'
  type: boolean
  inputBinding:
    prefix: --repeatMaskMatrixBiggerThanThis
- id: in_dig_a_onal_expansion
  doc: ': (int >= 0 and even) Number of x-y diagonals to expand around anchors'
  type: boolean
  inputBinding:
    prefix: --digaonalExpansion
- id: in_constraint_diagonal_trim
  doc: ': (int >= 0) Amount to trim from ends of each anchor'
  type: boolean
  inputBinding:
    prefix: --constraintDiagonalTrim
- id: in_minimum_degree
  doc: ': (int >= 0) Minimum number of sequences in a block to be included in the
    output graph'
  type: boolean
  inputBinding:
    prefix: --minimumDegree
- id: in_align_ambiguity_characters
  doc: ': Align ambiguity characters (anything not ACTGactg) as a wildcard'
  type: boolean
  inputBinding:
    prefix: --alignAmbiguityCharacters
- id: in_prune_out_stub_alignments
  doc: ': Prune out alignments of sequences that terminates in free stubs stubs'
  type: boolean
  inputBinding:
    prefix: --pruneOutStubAlignments
- id: in_minimum_in_group_degree
  doc: ': Number of ingroup sequences required in a block.'
  type: boolean
  inputBinding:
    prefix: --minimumIngroupDegree
- id: in_minimum_out_group_degree
  doc: ': Number of outgroup sequences required in a block.'
  type: boolean
  inputBinding:
    prefix: --minimumOutgroupDegree
- id: in_precomputed_alignments
  doc: ': Precomputed end alignments.'
  type: boolean
  inputBinding:
    prefix: --precomputedAlignments
- id: in_end_alignments_to_precompute_output_file
  doc: '[fileName] : If this output file is provided then bar will read stdin first
    to parse the flower, then to parse the names of the end alignments to precompute.
    The results will be placed in this file.'
  type: File
  inputBinding:
    prefix: --endAlignmentsToPrecomputeOutputFile
- id: in_use_progressive_merging
  doc: ': Use progressive merging instead of poset merging for constructing multiple
    sequence alignments.'
  type: boolean
  inputBinding:
    prefix: --useProgressiveMerging
- id: in_calculate_which_ends_to_compute_separately
  doc: ': Decide which end alignments to compute separately.'
  type: boolean
  inputBinding:
    prefix: --calculateWhichEndsToComputeSeparately
- id: in_large_end_size
  doc: ': The size of sequences in an end at which point to compute it separately.'
  type: boolean
  inputBinding:
    prefix: --largeEndSize
- id: in_in_group_coverage_file
  doc: ": Binary coverage file containing ingroup regions that are covered by outgroups.\
    \ These regions will be 'rescued' into single-degree blocks if they haven't been\
    \ aligned to anything after the bar phase finished."
  type: boolean
  inputBinding:
    prefix: --ingroupCoverageFile
- id: in_minimum_size_to_rescue
  doc: ': Unaligned but covered segments must be at least this size to be rescued.'
  type: boolean
  inputBinding:
    prefix: --minimumSizeToRescue
- id: in_minimum_coverage_to_rescue
  doc: ': Unaligned segments must have at least this proportion of their bases covered
    by an outgroup to be rescued.'
  type: boolean
  inputBinding:
    prefix: --minimumCoverageToRescue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_end_alignments_to_precompute_output_file
  doc: '[fileName] : If this output file is provided then bar will read stdin first
    to parse the flower, then to parse the names of the end alignments to precompute.
    The results will be placed in this file.'
  type: File
  outputBinding:
    glob: $(inputs.in_end_alignments_to_precompute_output_file)
cwlVersion: v1.1
baseCommand:
- cactus_bar
