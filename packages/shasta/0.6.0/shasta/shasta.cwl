class: CommandLineTool
id: shasta.cwl
inputs:
- id: in_identify_shasta_version
  doc: '[ --version ]                      Identify the Shasta version.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_config
  doc: Configuration file name.
  type: File?
  inputBinding:
    prefix: --config
- id: in_input
  doc: "Names of input files containing reads.\nSpecify at least one."
  type: string?
  inputBinding:
    prefix: --input
- id: in_assembly_directory
  doc: "(=ShastaRun)  Name of the output directory. If\ncommand is assemble, this\
    \ directory\nmust not exist."
  type: Directory?
  inputBinding:
    prefix: --assemblyDirectory
- id: in_command
  doc: "(=assemble)             Command to run. Must be one of:\nassemble, saveBinaryData,\n\
    cleanupBinaryData, explore,\ncreateBashCompletionScript"
  type: string?
  inputBinding:
    prefix: --command
- id: in_memory_mode
  doc: "(=anonymous)         Specify whether allocated memory is\nanonymous or backed\
    \ by a filesystem.\nAllowed values: anonymous, filesystem."
  type: string?
  inputBinding:
    prefix: --memoryMode
- id: in_memory_backing
  doc: (=4K)             Specify the type of pages used to back
  type: long?
  inputBinding:
    prefix: --memoryBacking
- id: in_threads
  doc: "(=0)                    Number of threads, or 0 to use one\nthread per virtual\
    \ processor."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_explore_access
  doc: "(=user)           Specify allowed access for --command\nexplore. Allowed values:\
    \ user, local,\nunrestricted. DO NOT CHANGE FROM\nDEFAULT VALUE WITHOUT UNDERSTANDING\
    \ THE\nSECURITY IMPLICATIONS."
  type: string?
  inputBinding:
    prefix: --exploreAccess
- id: in_port
  doc: "(=17100)                   Port to be used by the http server\n(command --explore)."
  type: long?
  inputBinding:
    prefix: --port
- id: in_reads_dot_palindromic_reads_dot_skip_flagging
  doc: "Skip flagging palindromic reads. Oxford\nNanopore reads should be flagged\
    \ for\nbetter results."
  type: boolean?
  inputBinding:
    prefix: --Reads.palindromicReads.skipFlagging
- id: in_reads_dot_palindromic_reads_dot_max_skip
  doc: "(=100)\nUsed for palindromic read detection."
  type: long?
  inputBinding:
    prefix: --Reads.palindromicReads.maxSkip
- id: in_reads_dot_palindromic_reads_dot_max_drift
  doc: "(=100)\nUsed for palindromic read detection."
  type: long?
  inputBinding:
    prefix: --Reads.palindromicReads.maxDrift
- id: in_reads_dot_palindromic_reads_dot_max_marker_frequency
  doc: "(=10)\nUsed for palindromic read detection."
  type: long?
  inputBinding:
    prefix: --Reads.palindromicReads.maxMarkerFrequency
- id: in_reads_dot_palindromic_reads_dot_aligned_fraction_threshold
  doc: "(=0.1)\nUsed for palindromic read detection."
  type: double?
  inputBinding:
    prefix: --Reads.palindromicReads.alignedFractionThreshold
- id: in_reads_dot_palindromic_reads_dot_near_diagonal_fraction_threshold
  doc: "(=0.1)\nUsed for palindromic read detection."
  type: double?
  inputBinding:
    prefix: --Reads.palindromicReads.nearDiagonalFractionThreshold
- id: in_reads_dot_palindromic_reads_dot_delta_threshold
  doc: "(=100)\nUsed for palindromic read detection."
  type: long?
  inputBinding:
    prefix: --Reads.palindromicReads.deltaThreshold
- id: in_km_ers_dot_generation_method
  doc: "(=0)     Method to generate marker k-mers: 0 =\nrandom, 1 = random, excluding\
    \ globally\noverenriched,2 = random, excluding\noverenriched even in a single\
    \ read,3 =\nread from file."
  type: File?
  inputBinding:
    prefix: --Kmers.generationMethod
- id: in_km_ers_dot_k
  doc: "(=10)                   Length of marker k-mers (in run-length\nspace)."
  type: long?
  inputBinding:
    prefix: --Kmers.k
- id: in_km_ers_dot_probability
  doc: (=0.1)        Fraction k-mers used as a marker.
  type: double?
  inputBinding:
    prefix: --Kmers.probability
- id: in_km_ers_dot_enrichment_threshold
  doc: "(=100.)\nEnrichment threshold for\nKmers.generationMethod 1 and 2."
  type: long?
  inputBinding:
    prefix: --Kmers.enrichmentThreshold
- id: in_km_ers_dotfile
  doc: "The absolute path of a file containing\nthe k-mers to be used as markers,\
    \ one\nper line. A relative path is not\naccepted. Only used if\nKmers.generationMethod\
    \ is 3."
  type: File?
  inputBinding:
    prefix: --Kmers.file
- id: in_min_hash_dot_version
  doc: "(=0)            Controls the version of the LowHash\nalgorithm to use. Can\
    \ be 0 (default) or\n1.(experimental)."
  type: long?
  inputBinding:
    prefix: --MinHash.version
- id: in_min_hash_do_tm
  doc: "(=4)                  The number of consecutive markers that\ndefine a MinHash/LowHash\
    \ feature."
  type: long?
  inputBinding:
    prefix: --MinHash.m
- id: in_min_hash_dot_hash_fraction
  doc: "(=0.01)    Defines how low a hash has to be to be\nused with the LowHash algorithm."
  type: double?
  inputBinding:
    prefix: --MinHash.hashFraction
- id: in_min_hash_dot_min_hash_iteration_count
  doc: "(=10)\nThe number of MinHash/LowHash\niterations, or 0 to let\n--MinHash.alignmentCandidatesPerRead\n\
    control the number of iterations."
  type: long?
  inputBinding:
    prefix: --MinHash.minHashIterationCount
- id: in_min_hash_dot_alignment_candidates_per_read
  doc: "(=20)\nIf --MinHash.minHashIterationCount is\n0, MinHash iteration is stopped\
    \ when\nthe average number of alignment\ncandidates that each read is involved\n\
    in reaches this value. If\n--MinHash.minHashIterationCount is not\n0, this is\
    \ not used."
  type: long?
  inputBinding:
    prefix: --MinHash.alignmentCandidatesPerRead
- id: in_min_hash_dot_min_bucketsize
  doc: "(=0)      The minimum bucket size to be used by\nthe LowHash algoritm."
  type: long?
  inputBinding:
    prefix: --MinHash.minBucketSize
- id: in_min_hash_dot_max_bucketsize
  doc: "(=10)     The maximum bucket size to be used by\nthe LowHash algoritm."
  type: long?
  inputBinding:
    prefix: --MinHash.maxBucketSize
- id: in_min_hash_dot_min_frequency
  doc: "(=2)       The minimum number of times a pair of\nreads must be found by the\n\
    MinHash/LowHash algorithm in order to\nbe considered a candidate alignment."
  type: long?
  inputBinding:
    prefix: --MinHash.minFrequency
- id: in_min_hash_dot_all_pairs
  doc: "Skip the MinHash algorithm and mark all\npairs of reads as alignmentcandidates\n\
    with both orientation. This should only\nbe used for experimentation on very\n\
    small runs because it is very time\nconsuming."
  type: boolean?
  inputBinding:
    prefix: --MinHash.allPairs
- id: in_align_dot_align_method
  doc: "(=3)          The alignment method to be used to\ncreate the read graph &\
    \ the marker\ngraph. 0 = old Shasta method, 1 = SeqAn\n(slow), 3 = banded SeqAn."
  type: long?
  inputBinding:
    prefix: --Align.alignMethod
- id: in_align_dot_max_skip
  doc: "(=30)             The maximum number of markers that an\nalignment is allowed\
    \ to skip."
  type: long?
  inputBinding:
    prefix: --Align.maxSkip
- id: in_align_dot_max_drift
  doc: "(=30)            The maximum amount of marker drift that\nan alignment is\
    \ allowed to tolerate\nbetween successive markers."
  type: long?
  inputBinding:
    prefix: --Align.maxDrift
- id: in_align_dot_max_trim
  doc: "(=30)             The maximum number of unaligned markers\ntolerated at the\
    \ beginning and end of\nan alignment."
  type: long?
  inputBinding:
    prefix: --Align.maxTrim
- id: in_align_dot_max_marker_frequency
  doc: "(=10)  Marker frequency threshold. Markers\nmore frequent than this value\
    \ in either\nof two oriented reads being aligned are\ndiscarded and not used to\
    \ compute the\nalignment."
  type: long?
  inputBinding:
    prefix: --Align.maxMarkerFrequency
- id: in_align_dot_min_aligned_marker_count
  doc: "(=100)\nThe minimum number of aligned markers\nfor an alignment to be used."
  type: long?
  inputBinding:
    prefix: --Align.minAlignedMarkerCount
- id: in_align_dot_min_aligned_fraction
  doc: "(=0)   The minimum fraction of aligned markers\nfor an alignment to be used."
  type: long?
  inputBinding:
    prefix: --Align.minAlignedFraction
- id: in_align_dot_match_score
  doc: "(=6)           Match score for marker alignments (only\nused for alignment\
    \ methods 1 and 3)."
  type: long?
  inputBinding:
    prefix: --Align.matchScore
- id: in_align_dot_mismatch_score
  doc: "(=-1)       Mismatch score for marker alignments\n(only used for alignment\
    \ methods 1 and\n3)."
  type: long?
  inputBinding:
    prefix: --Align.mismatchScore
- id: in_align_dot_gap_score
  doc: "(=-1)            Gap score for marker alignments (only\nused for alignment\
    \ methods 1 and 3)."
  type: long?
  inputBinding:
    prefix: --Align.gapScore
- id: in_align_dot_downsampling_factor
  doc: "(=0.10000000000000001)\nDownsampling factor (only used for\nalignment method\
    \ 3)."
  type: double?
  inputBinding:
    prefix: --Align.downsamplingFactor
- id: in_align_dot_band_extend
  doc: "(=10)          Amount to extend the downsampled band\n(only used for alignment\
    \ method 3)."
  type: long?
  inputBinding:
    prefix: --Align.bandExtend
- id: in_align_dot_max_band
  doc: "(=1000)           Maximum alignment band (only used for\nalignment method\
    \ 3)."
  type: long?
  inputBinding:
    prefix: --Align.maxBand
- id: in_align_dot_same_channel_read_alignment_dot_suppress_delta_threshold
  doc: "(=0)\nIf not zero, alignments between reads\nfrom the same nanopore channel\
    \ and\nclose in time are suppressed. The\n\"read\" meta data fields from the FASTA\n\
    or FASTQ header are checked. If their\ndifference, in absolute value, is less\n\
    than the value of this option, the\nalignment is suppressed. This can help\navoid\
    \ assembly artifact. This check is\nonly done if the two reads have\nidentical\
    \ meta data fields \"runid\",\n\"sampleid\", and \"ch\". If any of these\nmeta\
    \ data fields are missing, this\ncheck is suppressed and this option has\nno effect."
  type: long?
  inputBinding:
    prefix: --Align.sameChannelReadAlignment.suppressDeltaThreshold
- id: in_align_dot_suppress_containments
  doc: "Suppress containment alignments, that\nis alignments in which one read is\n\
    entirely contained in another read,\nexcept possibly for up to maxTrim\nmarkers\
    \ at the beginning and end."
  type: boolean?
  inputBinding:
    prefix: --Align.suppressContainments
- id: in_read_graph_dot_creation_method
  doc: "(=0)   The method used to create the read\ngraph (0 default, 1 or 2 experimental)."
  type: long?
  inputBinding:
    prefix: --ReadGraph.creationMethod
- id: in_read_graph_dot_max_alignment_count
  doc: "(=6)\nThe maximum number of alignments to be\nkept for each read."
  type: long?
  inputBinding:
    prefix: --ReadGraph.maxAlignmentCount
- id: in_read_graph_dot_min_component_size
  doc: "(=100)\nThe minimum size (number of oriented\nreads) of a connected component\
    \ of the\nread graph to be kept. This is\ncurrently ignored."
  type: long?
  inputBinding:
    prefix: --ReadGraph.minComponentSize
- id: in_read_graph_dot_max_chimeric_read_distance
  doc: "(=2)\nUsed for chimeric read detection."
  type: long?
  inputBinding:
    prefix: --ReadGraph.maxChimericReadDistance
- id: in_read_graph_dot_cross_strand_max_distance
  doc: "(=6)\nMaximum distance (edges) for\nflagCrossStrandReadGraphEdges. Set this\n\
    to zero to entirely suppress\nflagCrossStrandReadGraphEdges."
  type: long?
  inputBinding:
    prefix: --ReadGraph.crossStrandMaxDistance
- id: in_read_graph_dot_contained_neighbor_count
  doc: "(=6)\nMaximum number of alignments to be kept\nfor each contained read (only\
    \ used when\ncreationMethod is 1)."
  type: long?
  inputBinding:
    prefix: --ReadGraph.containedNeighborCount
- id: in_read_graph_dot_uncontained_neighbor_count_per_direction
  doc: "(=3)\nMaximum number of alignments to be kept\nin each direction (forward,\
    \ backward)\nfor each uncontained read (only used\nwhen creationMethod is 1)."
  type: long?
  inputBinding:
    prefix: --ReadGraph.uncontainedNeighborCountPerDirection
- id: in_read_graph_dot_remove_conflicts
  doc: "Remove conflicts from the read graph.\nExperimental - do not use."
  type: boolean?
  inputBinding:
    prefix: --ReadGraph.removeConflicts
- id: in_read_graph_dot_marker_count_percentile
  doc: "(=0.015)\nPercentile for markerCount (only used\nwhen creationMethod is 2)."
  type: double?
  inputBinding:
    prefix: --ReadGraph.markerCountPercentile
- id: in_read_graph_dot_aligned_fraction_percentile
  doc: "(=0.12)\nPercentile for alignedFraction (only\nused when creationMethod is\
    \ 2)."
  type: double?
  inputBinding:
    prefix: --ReadGraph.alignedFractionPercentile
- id: in_read_graph_dot_max_skip_percentile
  doc: "(=0.12)\nPercentile for maxSkip (only used when\ncreationMethod is 2)."
  type: double?
  inputBinding:
    prefix: --ReadGraph.maxSkipPercentile
- id: in_read_graph_dot_max_drift_percentile
  doc: "(=0.12)\nPercentile for maxDrift (only used when\ncreationMethod is 2)."
  type: double?
  inputBinding:
    prefix: --ReadGraph.maxDriftPercentile
- id: in_read_graph_dot_max_trim_percentile
  doc: "(=0.015)\nPercentile for maxTrim (only used when\ncreationMethod is 2)."
  type: double?
  inputBinding:
    prefix: --ReadGraph.maxTrimPercentile
- id: in_marker_graph_dot_min_coverage
  doc: "(=10)   Minimum coverage (number of supporting\noriented reads) for a marker\
    \ graph\nvertex to be created.Specifying 0\ncauses a suitable value of this\n\
    parameter to be selected automatically."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.minCoverage
- id: in_marker_graph_dot_max_coverage
  doc: "(=100)  Maximum coverage (number of supporting\noriented reads) for a marker\
    \ graph\nvertex."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.maxCoverage
- id: in_marker_graph_dot_min_coverage_per_strand
  doc: "(=0)\nMinimum coverage (number of supporting\noriented reads) for each strand\
    \ for a\nmarker graph vertex."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.minCoveragePerStrand
- id: in_marker_graph_dot_low_coverage_threshold
  doc: "(=0)\nUsed during approximate transitive\nreduction. Marker graph edges with\n\
    coverage lower than this value are\nalways marked as removed regardless of\nreachability."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.lowCoverageThreshold
- id: in_marker_graph_dot_high_coverage_threshold
  doc: "(=256)\nUsed during approximate transitive\nreduction. Marker graph edges\
    \ with\ncoverage higher than this value are\nnever marked as removed regardless\
    \ of\nreachability."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.highCoverageThreshold
- id: in_marker_graph_dot_max_distance
  doc: (=30)   Used during approximate transitive
  type: long?
  inputBinding:
    prefix: --MarkerGraph.maxDistance
- id: in_marker_graph_dot_simplify_maxlength
  doc: "(=10,100,1000)\nMaximum lengths (in markers) used at\neach iteration of simplifyMarkerGraph."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.simplifyMaxLength
- id: in_marker_graph_dot_cross_edge_coverage_threshold
  doc: "(=0)\nExperimental. Cross edge coverage\nthreshold. If this is not zero,\n\
    assembly graph cross-edges with average\nedge coverage less than this value are\n\
    removed, together with the\ncorresponding marker graph edges. A\ncross edge is\
    \ defined as an edge v0->v1\nwith out-degree(v0)>1, in-degree(v1)>1."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.crossEdgeCoverageThreshold
- id: in_marker_graph_dot_refine_threshold
  doc: "(=0)\nExperimental. Length threshold, in\nmarkers, for the marker graph\n\
    refinement step, or 0 to turn off the\nrefinement step."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.refineThreshold
- id: in_marker_graph_dot_reverse_transitive_reduction
  doc: "Perform approximate reverse transitive\nreduction of the marker graph."
  type: boolean?
  inputBinding:
    prefix: --MarkerGraph.reverseTransitiveReduction
- id: in_marker_graph_dot_peak_finder_dot_min_are_a_fraction
  doc: "(=0.080000000000000002)\nUsed in the automatic selection of\n--MarkerGraph.minCoverage\
    \ when\n--MarkerGraph.minCoverage is set to 0."
  type: double?
  inputBinding:
    prefix: --MarkerGraph.peakFinder.minAreaFraction
- id: in_marker_graph_dot_peak_finder_dot_area_start_index
  doc: "(=2)\nUsed in the automatic selection of\n--MarkerGraph.minCoverage when\n\
    --MarkerGraph.minCoverage is set to 0."
  type: long?
  inputBinding:
    prefix: --MarkerGraph.peakFinder.areaStartIndex
- id: in_assembly_dot_cross_edge_coverage_threshold
  doc: "(=3)\nMaximum average edge coverage for a\ncross edge of the assembly graph\
    \ to be\nremoved."
  type: long?
  inputBinding:
    prefix: --Assembly.crossEdgeCoverageThreshold
- id: in_assembly_dot_marker_graph_edge_length_threshold_for_consensus
  doc: "(=1000)\nControls assembly of long marker graph\nedges."
  type: long?
  inputBinding:
    prefix: --Assembly.markerGraphEdgeLengthThresholdForConsensus
- id: in_assembly_dot_consensus_caller
  doc: "(=Bayesian:guppy-2.3.5-a)\nSelects the consensus caller for repeat\ncounts.\
    \ See the documentation for\navailable choices."
  type: double?
  inputBinding:
    prefix: --Assembly.consensusCaller
- id: in_assembly_dot_store_coverage_data
  doc: "Used to request storing coverage data\nin binary format."
  type: boolean?
  inputBinding:
    prefix: --Assembly.storeCoverageData
- id: in_assembly_dot_store_coverage_data_csv_length_threshold
  doc: "(=0)\nUsed to specify the minimum length of\nan assembled segment for which\
    \ coverage\ndata in csv format should be stored. If\n0, no coverage data in csv\
    \ format is\nstored."
  type: long?
  inputBinding:
    prefix: --Assembly.storeCoverageDataCsvLengthThreshold
- id: in_assembly_dot_write_reads_by_assembled_segment
  doc: "Used to request writing the reads that\ncontributed to assembling each segment."
  type: boolean?
  inputBinding:
    prefix: --Assembly.writeReadsByAssembledSegment
- id: in_assembly_dot_de_tangle_method
  doc: "(=0)    Specify the method used to detangle the\nassembly graph. 0 = no detangling,\
    \ 1 =\nstrict detangling, 2 = less strict\ndetangling, controlled by\nAssembly.detangle.*\
    \ options\n(experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.detangleMethod
- id: in_assembly_dot_de_tangle_dot_diagonal_read_count_min
  doc: "(=1)\nMinimum number of reads on detangle\nmatrix diagonal elements required\
    \ for\ndetangling."
  type: long?
  inputBinding:
    prefix: --Assembly.detangle.diagonalReadCountMin
- id: in_assembly_dot_de_tangle_dot_off_diagonal_read_count_max
  doc: "(=2)\nMaximum number of reads on detangle\nmatrix off-diagonal elements allowed\n\
    for detangling."
  type: long?
  inputBinding:
    prefix: --Assembly.detangle.offDiagonalReadCountMax
- id: in_assembly_dot_de_tangle_dot_off_diagonal_ratio
  doc: "(=0.29999999999999999)\nMaximum ratio of total off-diagonal\nelements over\
    \ diagonal element allowed\nfor detangling."
  type: double?
  inputBinding:
    prefix: --Assembly.detangle.offDiagonalRatio
- id: in_assembly_dot_iterative
  doc: "Used to request iterative assembly\n(experimental)."
  type: boolean?
  inputBinding:
    prefix: --Assembly.iterative
- id: in_assembly_dot_iterative_dot_iteration_count
  doc: "(=3)\nNumber of iterations for iterative\nassembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.iterationCount
- id: in_assembly_dot_iterative_dot_pseudo_path_align_match_score
  doc: "(=1)\nPseudopath alignment match score for\niterative assembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.pseudoPathAlignMatchScore
- id: in_assembly_dot_iterative_dot_pseudo_path_align_mismatch_score
  doc: "(=-1)\nPseudopath alignment mismatch score for\niterative assembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.pseudoPathAlignMismatchScore
- id: in_assembly_dot_iterative_dot_pseudo_path_align_gap_score
  doc: "(=-1)\nPseudopath alignment gap score for\niterative assembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.pseudoPathAlignGapScore
- id: in_assembly_dot_iterative_dot_mismatch_square_factor
  doc: "(=3)\nMismatch square factor for iterative\nassembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.mismatchSquareFactor
- id: in_assembly_dot_iterative_dot_min_score
  doc: "(=0)\nMinimum pseudo-alignment score for\niterative assembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.minScore
- id: in_assembly_dot_iterative_dot_max_alignment_count
  doc: "(=6)\nMaximum number of read graph neighbors\nfor iterative assembly (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.maxAlignmentCount
- id: in_assembly_dot_iterative_dot_bridge_removal_iteration_count
  doc: "(=3)\nNumber of read graph bridge removal\niterations for iterative assembly\n\
    (experimental)."
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.bridgeRemovalIterationCount
- id: in_assembly_dot_iterative_dot_bridge_removal_max_distance
  doc: "(=2)\nMaximum distance for read graph bridge\nremoval for iterative assembly\n\
    (experimental).\n"
  type: long?
  inputBinding:
    prefix: --Assembly.iterative.bridgeRemovalMaxDistance
- id: in_memory_dot
  doc: 'Allowed values: disk, 4K , 2M (for best'
  type: string
  inputBinding:
    position: 0
- id: in_discarded_dot
  doc: '--Reads.desiredCoverage arg (=0)      Reduce coverage to desired value. If '
  type: string
  inputBinding:
    position: 0
- id: in_coverage_dot
  doc: '--Reads.noCache                       If set, skip the Linux cache when '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_assembly_directory
  doc: "(=ShastaRun)  Name of the output directory. If\ncommand is assemble, this\
    \ directory\nmust not exist."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_assembly_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/shasta:0.6.0--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- shasta
