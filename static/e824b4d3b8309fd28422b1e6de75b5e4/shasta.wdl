version 1.0

task Shasta {
  input {
    Boolean? identify_shasta_version
    File? config
    String? names_least_one
    Directory? assembly_directory
    String? assemble_command_run
    String? memory_mode
    Int? memory_backing
    Int? threads
    String? explore_access
    Int? port
    Boolean? reads_dot_palindromic_reads_dot_skip_flagging
    Int? reads_dot_palindromic_reads_dot_max_skip
    Int? reads_dot_palindromic_reads_dot_max_drift
    Int? reads_dot_palindromic_reads_dot_max_marker_frequency
    Float? reads_dot_palindromic_reads_dot_aligned_fraction_threshold
    Float? reads_dot_palindromic_reads_dot_near_diagonal_fraction_threshold
    Int? reads_dot_palindromic_reads_dot_delta_threshold
    File? km_ers_dot_generation_method
    Int? km_ers_dot_k
    Float? km_ers_dot_probability
    Int? km_ers_dot_enrichment_threshold
    File? km_ers_dotfile
    Int? min_hash_dot_version
    Int? min_hash_do_tm
    Float? min_hash_dot_hash_fraction
    Int? min_hash_dot_min_hash_iteration_count
    Int? min_hash_dot_alignment_candidates_per_read
    Int? min_hash_dot_min_bucketsize
    Int? min_hash_dot_max_bucketsize
    Int? min_hash_dot_min_frequency
    Boolean? min_hash_dot_all_pairs
    Int? align_dot_align_method
    Int? align_dot_max_skip
    Int? align_dot_max_drift
    Int? align_dot_max_trim
    Int? align_dot_max_marker_frequency
    Int? align_dot_min_aligned_marker_count
    Int? align_dot_min_aligned_fraction
    Int? align_dot_match_score
    Int? align_dot_mismatch_score
    Int? align_dot_gap_score
    Float? align_dot_downsampling_factor
    Int? align_dot_band_extend
    Int? align_dot_max_band
    Int? align_dot_same_channel_read_alignment_dot_suppress_delta_threshold
    Boolean? align_dot_suppress_containments
    Int? read_graph_dot_creation_method
    Int? read_graph_dot_max_alignment_count
    Int? read_graph_dot_min_component_size
    Int? read_graph_dot_max_chimeric_read_distance
    Int? read_graph_dot_cross_strand_max_distance
    Int? read_graph_dot_contained_neighbor_count
    Int? read_graph_dot_uncontained_neighbor_count_per_direction
    Boolean? read_graph_dot_remove_conflicts
    Float? read_graph_dot_marker_count_percentile
    Float? read_graph_dot_aligned_fraction_percentile
    Float? read_graph_dot_max_skip_percentile
    Float? read_graph_dot_max_drift_percentile
    Float? read_graph_dot_max_trim_percentile
    Int? marker_graph_dot_min_coverage
    Int? marker_graph_dot_max_coverage
    Int? marker_graph_dot_min_coverage_per_strand
    Int? marker_graph_dot_low_coverage_threshold
    Int? marker_graph_dot_high_coverage_threshold
    Int? marker_graph_dot_max_distance
    Int? marker_graph_dot_simplify_maxlength
    Int? marker_graph_dot_cross_edge_coverage_threshold
    Int? marker_graph_dot_refine_threshold
    Boolean? marker_graph_dot_reverse_transitive_reduction
    Float? marker_graph_dot_peak_finder_dot_min_are_a_fraction
    Int? marker_graph_dot_peak_finder_dot_area_start_index
    Int? assembly_dot_cross_edge_coverage_threshold
    Int? assembly_dot_marker_graph_edge_length_threshold_for_consensus
    Float? assembly_dot_consensus_caller
    Boolean? assembly_dot_store_coverage_data
    Int? assembly_dot_store_coverage_data_csv_length_threshold
    Boolean? assembly_dot_write_reads_by_assembled_segment
    Int? assembly_dot_de_tangle_method
    Int? assembly_dot_de_tangle_dot_diagonal_read_count_min
    Int? assembly_dot_de_tangle_dot_off_diagonal_read_count_max
    Float? assembly_dot_de_tangle_dot_off_diagonal_ratio
    Boolean? assembly_dot_iterative
    Int? assembly_dot_iterative_dot_iteration_count
    Int? assembly_dot_iterative_dot_pseudo_path_align_match_score
    Int? assembly_dot_iterative_dot_pseudo_path_align_mismatch_score
    Int? assembly_dot_iterative_dot_pseudo_path_align_gap_score
    Int? assembly_dot_iterative_dot_mismatch_square_factor
    Int? assembly_dot_iterative_dot_min_score
    Int? assembly_dot_iterative_dot_max_alignment_count
    Int? assembly_dot_iterative_dot_bridge_removal_iteration_count
    Int? assembly_dot_iterative_dot_bridge_removal_max_distance
    String memory_dot
    String discarded_dot
    String coverage_dot
  }
  command <<<
    shasta \
      ~{memory_dot} \
      ~{discarded_dot} \
      ~{coverage_dot} \
      ~{if (identify_shasta_version) then "-v" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(names_least_one) then ("--input " +  '"' + names_least_one + '"') else ""} \
      ~{if defined(assembly_directory) then ("--assemblyDirectory " +  '"' + assembly_directory + '"') else ""} \
      ~{if defined(assemble_command_run) then ("--command " +  '"' + assemble_command_run + '"') else ""} \
      ~{if defined(memory_mode) then ("--memoryMode " +  '"' + memory_mode + '"') else ""} \
      ~{if defined(memory_backing) then ("--memoryBacking " +  '"' + memory_backing + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(explore_access) then ("--exploreAccess " +  '"' + explore_access + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (reads_dot_palindromic_reads_dot_skip_flagging) then "--Reads.palindromicReads.skipFlagging" else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_max_skip) then ("--Reads.palindromicReads.maxSkip " +  '"' + reads_dot_palindromic_reads_dot_max_skip + '"') else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_max_drift) then ("--Reads.palindromicReads.maxDrift " +  '"' + reads_dot_palindromic_reads_dot_max_drift + '"') else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_max_marker_frequency) then ("--Reads.palindromicReads.maxMarkerFrequency " +  '"' + reads_dot_palindromic_reads_dot_max_marker_frequency + '"') else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_aligned_fraction_threshold) then ("--Reads.palindromicReads.alignedFractionThreshold " +  '"' + reads_dot_palindromic_reads_dot_aligned_fraction_threshold + '"') else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_near_diagonal_fraction_threshold) then ("--Reads.palindromicReads.nearDiagonalFractionThreshold " +  '"' + reads_dot_palindromic_reads_dot_near_diagonal_fraction_threshold + '"') else ""} \
      ~{if defined(reads_dot_palindromic_reads_dot_delta_threshold) then ("--Reads.palindromicReads.deltaThreshold " +  '"' + reads_dot_palindromic_reads_dot_delta_threshold + '"') else ""} \
      ~{if defined(km_ers_dot_generation_method) then ("--Kmers.generationMethod " +  '"' + km_ers_dot_generation_method + '"') else ""} \
      ~{if defined(km_ers_dot_k) then ("--Kmers.k " +  '"' + km_ers_dot_k + '"') else ""} \
      ~{if defined(km_ers_dot_probability) then ("--Kmers.probability " +  '"' + km_ers_dot_probability + '"') else ""} \
      ~{if defined(km_ers_dot_enrichment_threshold) then ("--Kmers.enrichmentThreshold " +  '"' + km_ers_dot_enrichment_threshold + '"') else ""} \
      ~{if defined(km_ers_dotfile) then ("--Kmers.file " +  '"' + km_ers_dotfile + '"') else ""} \
      ~{if defined(min_hash_dot_version) then ("--MinHash.version " +  '"' + min_hash_dot_version + '"') else ""} \
      ~{if defined(min_hash_do_tm) then ("--MinHash.m " +  '"' + min_hash_do_tm + '"') else ""} \
      ~{if defined(min_hash_dot_hash_fraction) then ("--MinHash.hashFraction " +  '"' + min_hash_dot_hash_fraction + '"') else ""} \
      ~{if defined(min_hash_dot_min_hash_iteration_count) then ("--MinHash.minHashIterationCount " +  '"' + min_hash_dot_min_hash_iteration_count + '"') else ""} \
      ~{if defined(min_hash_dot_alignment_candidates_per_read) then ("--MinHash.alignmentCandidatesPerRead " +  '"' + min_hash_dot_alignment_candidates_per_read + '"') else ""} \
      ~{if defined(min_hash_dot_min_bucketsize) then ("--MinHash.minBucketSize " +  '"' + min_hash_dot_min_bucketsize + '"') else ""} \
      ~{if defined(min_hash_dot_max_bucketsize) then ("--MinHash.maxBucketSize " +  '"' + min_hash_dot_max_bucketsize + '"') else ""} \
      ~{if defined(min_hash_dot_min_frequency) then ("--MinHash.minFrequency " +  '"' + min_hash_dot_min_frequency + '"') else ""} \
      ~{if (min_hash_dot_all_pairs) then "--MinHash.allPairs" else ""} \
      ~{if defined(align_dot_align_method) then ("--Align.alignMethod " +  '"' + align_dot_align_method + '"') else ""} \
      ~{if defined(align_dot_max_skip) then ("--Align.maxSkip " +  '"' + align_dot_max_skip + '"') else ""} \
      ~{if defined(align_dot_max_drift) then ("--Align.maxDrift " +  '"' + align_dot_max_drift + '"') else ""} \
      ~{if defined(align_dot_max_trim) then ("--Align.maxTrim " +  '"' + align_dot_max_trim + '"') else ""} \
      ~{if defined(align_dot_max_marker_frequency) then ("--Align.maxMarkerFrequency " +  '"' + align_dot_max_marker_frequency + '"') else ""} \
      ~{if defined(align_dot_min_aligned_marker_count) then ("--Align.minAlignedMarkerCount " +  '"' + align_dot_min_aligned_marker_count + '"') else ""} \
      ~{if defined(align_dot_min_aligned_fraction) then ("--Align.minAlignedFraction " +  '"' + align_dot_min_aligned_fraction + '"') else ""} \
      ~{if defined(align_dot_match_score) then ("--Align.matchScore " +  '"' + align_dot_match_score + '"') else ""} \
      ~{if defined(align_dot_mismatch_score) then ("--Align.mismatchScore " +  '"' + align_dot_mismatch_score + '"') else ""} \
      ~{if defined(align_dot_gap_score) then ("--Align.gapScore " +  '"' + align_dot_gap_score + '"') else ""} \
      ~{if defined(align_dot_downsampling_factor) then ("--Align.downsamplingFactor " +  '"' + align_dot_downsampling_factor + '"') else ""} \
      ~{if defined(align_dot_band_extend) then ("--Align.bandExtend " +  '"' + align_dot_band_extend + '"') else ""} \
      ~{if defined(align_dot_max_band) then ("--Align.maxBand " +  '"' + align_dot_max_band + '"') else ""} \
      ~{if defined(align_dot_same_channel_read_alignment_dot_suppress_delta_threshold) then ("--Align.sameChannelReadAlignment.suppressDeltaThreshold " +  '"' + align_dot_same_channel_read_alignment_dot_suppress_delta_threshold + '"') else ""} \
      ~{if (align_dot_suppress_containments) then "--Align.suppressContainments" else ""} \
      ~{if defined(read_graph_dot_creation_method) then ("--ReadGraph.creationMethod " +  '"' + read_graph_dot_creation_method + '"') else ""} \
      ~{if defined(read_graph_dot_max_alignment_count) then ("--ReadGraph.maxAlignmentCount " +  '"' + read_graph_dot_max_alignment_count + '"') else ""} \
      ~{if defined(read_graph_dot_min_component_size) then ("--ReadGraph.minComponentSize " +  '"' + read_graph_dot_min_component_size + '"') else ""} \
      ~{if defined(read_graph_dot_max_chimeric_read_distance) then ("--ReadGraph.maxChimericReadDistance " +  '"' + read_graph_dot_max_chimeric_read_distance + '"') else ""} \
      ~{if defined(read_graph_dot_cross_strand_max_distance) then ("--ReadGraph.crossStrandMaxDistance " +  '"' + read_graph_dot_cross_strand_max_distance + '"') else ""} \
      ~{if defined(read_graph_dot_contained_neighbor_count) then ("--ReadGraph.containedNeighborCount " +  '"' + read_graph_dot_contained_neighbor_count + '"') else ""} \
      ~{if defined(read_graph_dot_uncontained_neighbor_count_per_direction) then ("--ReadGraph.uncontainedNeighborCountPerDirection " +  '"' + read_graph_dot_uncontained_neighbor_count_per_direction + '"') else ""} \
      ~{if (read_graph_dot_remove_conflicts) then "--ReadGraph.removeConflicts" else ""} \
      ~{if defined(read_graph_dot_marker_count_percentile) then ("--ReadGraph.markerCountPercentile " +  '"' + read_graph_dot_marker_count_percentile + '"') else ""} \
      ~{if defined(read_graph_dot_aligned_fraction_percentile) then ("--ReadGraph.alignedFractionPercentile " +  '"' + read_graph_dot_aligned_fraction_percentile + '"') else ""} \
      ~{if defined(read_graph_dot_max_skip_percentile) then ("--ReadGraph.maxSkipPercentile " +  '"' + read_graph_dot_max_skip_percentile + '"') else ""} \
      ~{if defined(read_graph_dot_max_drift_percentile) then ("--ReadGraph.maxDriftPercentile " +  '"' + read_graph_dot_max_drift_percentile + '"') else ""} \
      ~{if defined(read_graph_dot_max_trim_percentile) then ("--ReadGraph.maxTrimPercentile " +  '"' + read_graph_dot_max_trim_percentile + '"') else ""} \
      ~{if defined(marker_graph_dot_min_coverage) then ("--MarkerGraph.minCoverage " +  '"' + marker_graph_dot_min_coverage + '"') else ""} \
      ~{if defined(marker_graph_dot_max_coverage) then ("--MarkerGraph.maxCoverage " +  '"' + marker_graph_dot_max_coverage + '"') else ""} \
      ~{if defined(marker_graph_dot_min_coverage_per_strand) then ("--MarkerGraph.minCoveragePerStrand " +  '"' + marker_graph_dot_min_coverage_per_strand + '"') else ""} \
      ~{if defined(marker_graph_dot_low_coverage_threshold) then ("--MarkerGraph.lowCoverageThreshold " +  '"' + marker_graph_dot_low_coverage_threshold + '"') else ""} \
      ~{if defined(marker_graph_dot_high_coverage_threshold) then ("--MarkerGraph.highCoverageThreshold " +  '"' + marker_graph_dot_high_coverage_threshold + '"') else ""} \
      ~{if defined(marker_graph_dot_max_distance) then ("--MarkerGraph.maxDistance " +  '"' + marker_graph_dot_max_distance + '"') else ""} \
      ~{if defined(marker_graph_dot_simplify_maxlength) then ("--MarkerGraph.simplifyMaxLength " +  '"' + marker_graph_dot_simplify_maxlength + '"') else ""} \
      ~{if defined(marker_graph_dot_cross_edge_coverage_threshold) then ("--MarkerGraph.crossEdgeCoverageThreshold " +  '"' + marker_graph_dot_cross_edge_coverage_threshold + '"') else ""} \
      ~{if defined(marker_graph_dot_refine_threshold) then ("--MarkerGraph.refineThreshold " +  '"' + marker_graph_dot_refine_threshold + '"') else ""} \
      ~{if (marker_graph_dot_reverse_transitive_reduction) then "--MarkerGraph.reverseTransitiveReduction" else ""} \
      ~{if defined(marker_graph_dot_peak_finder_dot_min_are_a_fraction) then ("--MarkerGraph.peakFinder.minAreaFraction " +  '"' + marker_graph_dot_peak_finder_dot_min_are_a_fraction + '"') else ""} \
      ~{if defined(marker_graph_dot_peak_finder_dot_area_start_index) then ("--MarkerGraph.peakFinder.areaStartIndex " +  '"' + marker_graph_dot_peak_finder_dot_area_start_index + '"') else ""} \
      ~{if defined(assembly_dot_cross_edge_coverage_threshold) then ("--Assembly.crossEdgeCoverageThreshold " +  '"' + assembly_dot_cross_edge_coverage_threshold + '"') else ""} \
      ~{if defined(assembly_dot_marker_graph_edge_length_threshold_for_consensus) then ("--Assembly.markerGraphEdgeLengthThresholdForConsensus " +  '"' + assembly_dot_marker_graph_edge_length_threshold_for_consensus + '"') else ""} \
      ~{if defined(assembly_dot_consensus_caller) then ("--Assembly.consensusCaller " +  '"' + assembly_dot_consensus_caller + '"') else ""} \
      ~{if (assembly_dot_store_coverage_data) then "--Assembly.storeCoverageData" else ""} \
      ~{if defined(assembly_dot_store_coverage_data_csv_length_threshold) then ("--Assembly.storeCoverageDataCsvLengthThreshold " +  '"' + assembly_dot_store_coverage_data_csv_length_threshold + '"') else ""} \
      ~{if (assembly_dot_write_reads_by_assembled_segment) then "--Assembly.writeReadsByAssembledSegment" else ""} \
      ~{if defined(assembly_dot_de_tangle_method) then ("--Assembly.detangleMethod " +  '"' + assembly_dot_de_tangle_method + '"') else ""} \
      ~{if defined(assembly_dot_de_tangle_dot_diagonal_read_count_min) then ("--Assembly.detangle.diagonalReadCountMin " +  '"' + assembly_dot_de_tangle_dot_diagonal_read_count_min + '"') else ""} \
      ~{if defined(assembly_dot_de_tangle_dot_off_diagonal_read_count_max) then ("--Assembly.detangle.offDiagonalReadCountMax " +  '"' + assembly_dot_de_tangle_dot_off_diagonal_read_count_max + '"') else ""} \
      ~{if defined(assembly_dot_de_tangle_dot_off_diagonal_ratio) then ("--Assembly.detangle.offDiagonalRatio " +  '"' + assembly_dot_de_tangle_dot_off_diagonal_ratio + '"') else ""} \
      ~{if (assembly_dot_iterative) then "--Assembly.iterative" else ""} \
      ~{if defined(assembly_dot_iterative_dot_iteration_count) then ("--Assembly.iterative.iterationCount " +  '"' + assembly_dot_iterative_dot_iteration_count + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_pseudo_path_align_match_score) then ("--Assembly.iterative.pseudoPathAlignMatchScore " +  '"' + assembly_dot_iterative_dot_pseudo_path_align_match_score + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_pseudo_path_align_mismatch_score) then ("--Assembly.iterative.pseudoPathAlignMismatchScore " +  '"' + assembly_dot_iterative_dot_pseudo_path_align_mismatch_score + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_pseudo_path_align_gap_score) then ("--Assembly.iterative.pseudoPathAlignGapScore " +  '"' + assembly_dot_iterative_dot_pseudo_path_align_gap_score + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_mismatch_square_factor) then ("--Assembly.iterative.mismatchSquareFactor " +  '"' + assembly_dot_iterative_dot_mismatch_square_factor + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_min_score) then ("--Assembly.iterative.minScore " +  '"' + assembly_dot_iterative_dot_min_score + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_max_alignment_count) then ("--Assembly.iterative.maxAlignmentCount " +  '"' + assembly_dot_iterative_dot_max_alignment_count + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_bridge_removal_iteration_count) then ("--Assembly.iterative.bridgeRemovalIterationCount " +  '"' + assembly_dot_iterative_dot_bridge_removal_iteration_count + '"') else ""} \
      ~{if defined(assembly_dot_iterative_dot_bridge_removal_max_distance) then ("--Assembly.iterative.bridgeRemovalMaxDistance " +  '"' + assembly_dot_iterative_dot_bridge_removal_max_distance + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shasta:0.6.0--hc9558a2_0"
  }
  parameter_meta {
    identify_shasta_version: "[ --version ]                      Identify the Shasta version."
    config: "Configuration file name."
    names_least_one: "Names of input files containing reads.\\nSpecify at least one."
    assembly_directory: "(=ShastaRun)  Name of the output directory. If\\ncommand is assemble, this directory\\nmust not exist."
    assemble_command_run: "(=assemble)             Command to run. Must be one of:\\nassemble, saveBinaryData,\\ncleanupBinaryData, explore,\\ncreateBashCompletionScript"
    memory_mode: "(=anonymous)         Specify whether allocated memory is\\nanonymous or backed by a filesystem.\\nAllowed values: anonymous, filesystem."
    memory_backing: "(=4K)             Specify the type of pages used to back"
    threads: "(=0)                    Number of threads, or 0 to use one\\nthread per virtual processor."
    explore_access: "(=user)           Specify allowed access for --command\\nexplore. Allowed values: user, local,\\nunrestricted. DO NOT CHANGE FROM\\nDEFAULT VALUE WITHOUT UNDERSTANDING THE\\nSECURITY IMPLICATIONS."
    port: "(=17100)                   Port to be used by the http server\\n(command --explore)."
    reads_dot_palindromic_reads_dot_skip_flagging: "Skip flagging palindromic reads. Oxford\\nNanopore reads should be flagged for\\nbetter results."
    reads_dot_palindromic_reads_dot_max_skip: "(=100)\\nUsed for palindromic read detection."
    reads_dot_palindromic_reads_dot_max_drift: "(=100)\\nUsed for palindromic read detection."
    reads_dot_palindromic_reads_dot_max_marker_frequency: "(=10)\\nUsed for palindromic read detection."
    reads_dot_palindromic_reads_dot_aligned_fraction_threshold: "(=0.1)\\nUsed for palindromic read detection."
    reads_dot_palindromic_reads_dot_near_diagonal_fraction_threshold: "(=0.1)\\nUsed for palindromic read detection."
    reads_dot_palindromic_reads_dot_delta_threshold: "(=100)\\nUsed for palindromic read detection."
    km_ers_dot_generation_method: "(=0)     Method to generate marker k-mers: 0 =\\nrandom, 1 = random, excluding globally\\noverenriched,2 = random, excluding\\noverenriched even in a single read,3 =\\nread from file."
    km_ers_dot_k: "(=10)                   Length of marker k-mers (in run-length\\nspace)."
    km_ers_dot_probability: "(=0.1)        Fraction k-mers used as a marker."
    km_ers_dot_enrichment_threshold: "(=100.)\\nEnrichment threshold for\\nKmers.generationMethod 1 and 2."
    km_ers_dotfile: "The absolute path of a file containing\\nthe k-mers to be used as markers, one\\nper line. A relative path is not\\naccepted. Only used if\\nKmers.generationMethod is 3."
    min_hash_dot_version: "(=0)            Controls the version of the LowHash\\nalgorithm to use. Can be 0 (default) or\\n1.(experimental)."
    min_hash_do_tm: "(=4)                  The number of consecutive markers that\\ndefine a MinHash/LowHash feature."
    min_hash_dot_hash_fraction: "(=0.01)    Defines how low a hash has to be to be\\nused with the LowHash algorithm."
    min_hash_dot_min_hash_iteration_count: "(=10)\\nThe number of MinHash/LowHash\\niterations, or 0 to let\\n--MinHash.alignmentCandidatesPerRead\\ncontrol the number of iterations."
    min_hash_dot_alignment_candidates_per_read: "(=20)\\nIf --MinHash.minHashIterationCount is\\n0, MinHash iteration is stopped when\\nthe average number of alignment\\ncandidates that each read is involved\\nin reaches this value. If\\n--MinHash.minHashIterationCount is not\\n0, this is not used."
    min_hash_dot_min_bucketsize: "(=0)      The minimum bucket size to be used by\\nthe LowHash algoritm."
    min_hash_dot_max_bucketsize: "(=10)     The maximum bucket size to be used by\\nthe LowHash algoritm."
    min_hash_dot_min_frequency: "(=2)       The minimum number of times a pair of\\nreads must be found by the\\nMinHash/LowHash algorithm in order to\\nbe considered a candidate alignment."
    min_hash_dot_all_pairs: "Skip the MinHash algorithm and mark all\\npairs of reads as alignmentcandidates\\nwith both orientation. This should only\\nbe used for experimentation on very\\nsmall runs because it is very time\\nconsuming."
    align_dot_align_method: "(=3)          The alignment method to be used to\\ncreate the read graph & the marker\\ngraph. 0 = old Shasta method, 1 = SeqAn\\n(slow), 3 = banded SeqAn."
    align_dot_max_skip: "(=30)             The maximum number of markers that an\\nalignment is allowed to skip."
    align_dot_max_drift: "(=30)            The maximum amount of marker drift that\\nan alignment is allowed to tolerate\\nbetween successive markers."
    align_dot_max_trim: "(=30)             The maximum number of unaligned markers\\ntolerated at the beginning and end of\\nan alignment."
    align_dot_max_marker_frequency: "(=10)  Marker frequency threshold. Markers\\nmore frequent than this value in either\\nof two oriented reads being aligned are\\ndiscarded and not used to compute the\\nalignment."
    align_dot_min_aligned_marker_count: "(=100)\\nThe minimum number of aligned markers\\nfor an alignment to be used."
    align_dot_min_aligned_fraction: "(=0)   The minimum fraction of aligned markers\\nfor an alignment to be used."
    align_dot_match_score: "(=6)           Match score for marker alignments (only\\nused for alignment methods 1 and 3)."
    align_dot_mismatch_score: "(=-1)       Mismatch score for marker alignments\\n(only used for alignment methods 1 and\\n3)."
    align_dot_gap_score: "(=-1)            Gap score for marker alignments (only\\nused for alignment methods 1 and 3)."
    align_dot_downsampling_factor: "(=0.10000000000000001)\\nDownsampling factor (only used for\\nalignment method 3)."
    align_dot_band_extend: "(=10)          Amount to extend the downsampled band\\n(only used for alignment method 3)."
    align_dot_max_band: "(=1000)           Maximum alignment band (only used for\\nalignment method 3)."
    align_dot_same_channel_read_alignment_dot_suppress_delta_threshold: "(=0)\\nIf not zero, alignments between reads\\nfrom the same nanopore channel and\\nclose in time are suppressed. The\\n\\\"read\\\" meta data fields from the FASTA\\nor FASTQ header are checked. If their\\ndifference, in absolute value, is less\\nthan the value of this option, the\\nalignment is suppressed. This can help\\navoid assembly artifact. This check is\\nonly done if the two reads have\\nidentical meta data fields \\\"runid\\\",\\n\\\"sampleid\\\", and \\\"ch\\\". If any of these\\nmeta data fields are missing, this\\ncheck is suppressed and this option has\\nno effect."
    align_dot_suppress_containments: "Suppress containment alignments, that\\nis alignments in which one read is\\nentirely contained in another read,\\nexcept possibly for up to maxTrim\\nmarkers at the beginning and end."
    read_graph_dot_creation_method: "(=0)   The method used to create the read\\ngraph (0 default, 1 or 2 experimental)."
    read_graph_dot_max_alignment_count: "(=6)\\nThe maximum number of alignments to be\\nkept for each read."
    read_graph_dot_min_component_size: "(=100)\\nThe minimum size (number of oriented\\nreads) of a connected component of the\\nread graph to be kept. This is\\ncurrently ignored."
    read_graph_dot_max_chimeric_read_distance: "(=2)\\nUsed for chimeric read detection."
    read_graph_dot_cross_strand_max_distance: "(=6)\\nMaximum distance (edges) for\\nflagCrossStrandReadGraphEdges. Set this\\nto zero to entirely suppress\\nflagCrossStrandReadGraphEdges."
    read_graph_dot_contained_neighbor_count: "(=6)\\nMaximum number of alignments to be kept\\nfor each contained read (only used when\\ncreationMethod is 1)."
    read_graph_dot_uncontained_neighbor_count_per_direction: "(=3)\\nMaximum number of alignments to be kept\\nin each direction (forward, backward)\\nfor each uncontained read (only used\\nwhen creationMethod is 1)."
    read_graph_dot_remove_conflicts: "Remove conflicts from the read graph.\\nExperimental - do not use."
    read_graph_dot_marker_count_percentile: "(=0.015)\\nPercentile for markerCount (only used\\nwhen creationMethod is 2)."
    read_graph_dot_aligned_fraction_percentile: "(=0.12)\\nPercentile for alignedFraction (only\\nused when creationMethod is 2)."
    read_graph_dot_max_skip_percentile: "(=0.12)\\nPercentile for maxSkip (only used when\\ncreationMethod is 2)."
    read_graph_dot_max_drift_percentile: "(=0.12)\\nPercentile for maxDrift (only used when\\ncreationMethod is 2)."
    read_graph_dot_max_trim_percentile: "(=0.015)\\nPercentile for maxTrim (only used when\\ncreationMethod is 2)."
    marker_graph_dot_min_coverage: "(=10)   Minimum coverage (number of supporting\\noriented reads) for a marker graph\\nvertex to be created.Specifying 0\\ncauses a suitable value of this\\nparameter to be selected automatically."
    marker_graph_dot_max_coverage: "(=100)  Maximum coverage (number of supporting\\noriented reads) for a marker graph\\nvertex."
    marker_graph_dot_min_coverage_per_strand: "(=0)\\nMinimum coverage (number of supporting\\noriented reads) for each strand for a\\nmarker graph vertex."
    marker_graph_dot_low_coverage_threshold: "(=0)\\nUsed during approximate transitive\\nreduction. Marker graph edges with\\ncoverage lower than this value are\\nalways marked as removed regardless of\\nreachability."
    marker_graph_dot_high_coverage_threshold: "(=256)\\nUsed during approximate transitive\\nreduction. Marker graph edges with\\ncoverage higher than this value are\\nnever marked as removed regardless of\\nreachability."
    marker_graph_dot_max_distance: "(=30)   Used during approximate transitive"
    marker_graph_dot_simplify_maxlength: "(=10,100,1000)\\nMaximum lengths (in markers) used at\\neach iteration of simplifyMarkerGraph."
    marker_graph_dot_cross_edge_coverage_threshold: "(=0)\\nExperimental. Cross edge coverage\\nthreshold. If this is not zero,\\nassembly graph cross-edges with average\\nedge coverage less than this value are\\nremoved, together with the\\ncorresponding marker graph edges. A\\ncross edge is defined as an edge v0->v1\\nwith out-degree(v0)>1, in-degree(v1)>1."
    marker_graph_dot_refine_threshold: "(=0)\\nExperimental. Length threshold, in\\nmarkers, for the marker graph\\nrefinement step, or 0 to turn off the\\nrefinement step."
    marker_graph_dot_reverse_transitive_reduction: "Perform approximate reverse transitive\\nreduction of the marker graph."
    marker_graph_dot_peak_finder_dot_min_are_a_fraction: "(=0.080000000000000002)\\nUsed in the automatic selection of\\n--MarkerGraph.minCoverage when\\n--MarkerGraph.minCoverage is set to 0."
    marker_graph_dot_peak_finder_dot_area_start_index: "(=2)\\nUsed in the automatic selection of\\n--MarkerGraph.minCoverage when\\n--MarkerGraph.minCoverage is set to 0."
    assembly_dot_cross_edge_coverage_threshold: "(=3)\\nMaximum average edge coverage for a\\ncross edge of the assembly graph to be\\nremoved."
    assembly_dot_marker_graph_edge_length_threshold_for_consensus: "(=1000)\\nControls assembly of long marker graph\\nedges."
    assembly_dot_consensus_caller: "(=Bayesian:guppy-2.3.5-a)\\nSelects the consensus caller for repeat\\ncounts. See the documentation for\\navailable choices."
    assembly_dot_store_coverage_data: "Used to request storing coverage data\\nin binary format."
    assembly_dot_store_coverage_data_csv_length_threshold: "(=0)\\nUsed to specify the minimum length of\\nan assembled segment for which coverage\\ndata in csv format should be stored. If\\n0, no coverage data in csv format is\\nstored."
    assembly_dot_write_reads_by_assembled_segment: "Used to request writing the reads that\\ncontributed to assembling each segment."
    assembly_dot_de_tangle_method: "(=0)    Specify the method used to detangle the\\nassembly graph. 0 = no detangling, 1 =\\nstrict detangling, 2 = less strict\\ndetangling, controlled by\\nAssembly.detangle.* options\\n(experimental)."
    assembly_dot_de_tangle_dot_diagonal_read_count_min: "(=1)\\nMinimum number of reads on detangle\\nmatrix diagonal elements required for\\ndetangling."
    assembly_dot_de_tangle_dot_off_diagonal_read_count_max: "(=2)\\nMaximum number of reads on detangle\\nmatrix off-diagonal elements allowed\\nfor detangling."
    assembly_dot_de_tangle_dot_off_diagonal_ratio: "(=0.29999999999999999)\\nMaximum ratio of total off-diagonal\\nelements over diagonal element allowed\\nfor detangling."
    assembly_dot_iterative: "Used to request iterative assembly\\n(experimental)."
    assembly_dot_iterative_dot_iteration_count: "(=3)\\nNumber of iterations for iterative\\nassembly (experimental)."
    assembly_dot_iterative_dot_pseudo_path_align_match_score: "(=1)\\nPseudopath alignment match score for\\niterative assembly (experimental)."
    assembly_dot_iterative_dot_pseudo_path_align_mismatch_score: "(=-1)\\nPseudopath alignment mismatch score for\\niterative assembly (experimental)."
    assembly_dot_iterative_dot_pseudo_path_align_gap_score: "(=-1)\\nPseudopath alignment gap score for\\niterative assembly (experimental)."
    assembly_dot_iterative_dot_mismatch_square_factor: "(=3)\\nMismatch square factor for iterative\\nassembly (experimental)."
    assembly_dot_iterative_dot_min_score: "(=0)\\nMinimum pseudo-alignment score for\\niterative assembly (experimental)."
    assembly_dot_iterative_dot_max_alignment_count: "(=6)\\nMaximum number of read graph neighbors\\nfor iterative assembly (experimental)."
    assembly_dot_iterative_dot_bridge_removal_iteration_count: "(=3)\\nNumber of read graph bridge removal\\niterations for iterative assembly\\n(experimental)."
    assembly_dot_iterative_dot_bridge_removal_max_distance: "(=2)\\nMaximum distance for read graph bridge\\nremoval for iterative assembly\\n(experimental).\\n"
    memory_dot: "Allowed values: disk, 4K , 2M (for best"
    discarded_dot: "--Reads.desiredCoverage arg (=0)      Reduce coverage to desired value. If "
    coverage_dot: "--Reads.noCache                       If set, skip the Linux cache when "
  }
  output {
    File out_stdout = stdout()
    Directory out_assembly_directory = "${in_assembly_directory}"
  }
}