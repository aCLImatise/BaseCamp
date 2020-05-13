class: CommandLineTool
id: poa.cwl
inputs:
- id: input_file_name
  doc: The input cmp.h5 or BAM alignment file
  type: string
  inputBinding:
    position: 0
- id: emit_tool_contract
  doc: 'Emit Tool Contract to stdout (default: False)'
  type: boolean
  inputBinding:
    prefix: --emit-tool-contract
- id: resolved_tool_contract
  doc: 'Run Tool directly from a PacBio Resolved tool contract (default: None)'
  type: string
  inputBinding:
    prefix: --resolved-tool-contract
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: WARN)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: reference_filename
  doc: 'The filename of the reference FASTA file (default: None)'
  type: string
  inputBinding:
    prefix: --referenceFilename
- id: output_file_name
  doc: 'The output filename(s), as a comma-separated list.Valid output formats are
    .fa/.fasta, .fq/.fastq, .gff, .vcf (default: [])'
  type: string
  inputBinding:
    prefix: --outputFilename
- id: num_workers
  doc: 'The number of worker processes to be used (default: 1)'
  type: string
  inputBinding:
    prefix: --numWorkers
- id: min_confidence
  doc: 'The minimum confidence for a variant call to be output to variants.{gff,vcf}
    (default: 40)'
  type: long
  inputBinding:
    prefix: --minConfidence
- id: min_coverage
  doc: 'The minimum site coverage that must be achieved for variant calls and consensus
    to be calculated for a site. (default: 5)'
  type: long
  inputBinding:
    prefix: --minCoverage
- id: no_evidence_consensus_call
  doc: 'The consensus base that will be output for sites with no effective coverage.
    (default: lowercasereference)'
  type: string
  inputBinding:
    prefix: --noEvidenceConsensusCall
- id: coverage
  doc: 'A designation of the maximum coverage level to be used for analysis. Exact
    interpretation is algorithm- specific. (default: 100)'
  type: string
  inputBinding:
    prefix: --coverage
- id: min_map_qv
  doc: 'The minimum MapQV for reads that will be used for analysis. (default: 10)'
  type: long
  inputBinding:
    prefix: --minMapQV
- id: reference_windows
  doc: 'The window (or multiple comma-delimited windows) of the reference to be processed,
    in the format refGroup :refStart-refEnd (default: entire reference). (default:
    None)'
  type: string
  inputBinding:
    prefix: --referenceWindows
- id: alignment_set_ref_windows
  doc: 'The window (or multiple comma-delimited windows) of the reference to be processed,
    in the format refGroup :refStart-refEnd will be pulled from the alignment file.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --alignmentSetRefWindows
- id: reference_windows_file
  doc: 'A file containing reference window designations, one per line (default: None)'
  type: string
  inputBinding:
    prefix: --referenceWindowsFile
- id: barcode
  doc: '_BARCODE    Only process reads with the given barcode name. (default: None)'
  type: boolean
  inputBinding:
    prefix: --barcode
- id: read_stratum
  doc: "A string of the form 'n/N', where n, and N are integers, 0 <= n < N, designating\
    \ that the reads are to be deterministically split into N strata of roughly even\
    \ size, and stratum n is to be used for variant and consensus calling. This is\
    \ mostly useful for Quiver development. (default: None)"
  type: string
  inputBinding:
    prefix: --readStratum
- id: min_read_score
  doc: 'The minimum ReadScore for reads that will be used for analysis (arrow-only).
    (default: 0.65)'
  type: long
  inputBinding:
    prefix: --minReadScore
- id: mins_nr
  doc: 'The minimum acceptable signal-to-noise over all channels for reads that will
    be used for analysis (arrow-only). (default: 2.5)'
  type: long
  inputBinding:
    prefix: --minSnr
- id: min_zscore
  doc: 'The minimum acceptable z-score for reads that will be used for analysis (arrow-only).
    (default: -3.5)'
  type: long
  inputBinding:
    prefix: --minZScore
- id: min_accuracy
  doc: 'The minimum acceptable window-global alignment accuracy for reads that will
    be used for the analysis (arrow-only). (default: 0.82)'
  type: long
  inputBinding:
    prefix: --minAccuracy
- id: parameters_file
  doc: 'Parameter set filename (such as ArrowParameters.json or QuiverParameters.ini),
    or directory D such that either D/*/GenomicConsensus/QuiverParameters.ini, or
    D/GenomicConsensus/QuiverParameters.ini, is found. In the former case, the lexically
    largest path is chosen. (default: None)'
  type: string
  inputBinding:
    prefix: --parametersFile
- id: parameters_spec
  doc: "Name of parameter set (chemistry.model) to select from the parameters file,\
    \ or just the name of the chemistry, in which case the best available model is\
    \ chosen. Default is 'auto', which selects the best parameter set from the alignment\
    \ data (default: auto)"
  type: string
  inputBinding:
    prefix: --parametersSpec
- id: mask_radius
  doc: 'Radius of window to use when excluding local regions for exceeding maskMinErrorRate,
    where 0 disables any filtering (arrow-only). (default: 3)'
  type: string
  inputBinding:
    prefix: --maskRadius
- id: mask_error_rate
  doc: 'Maximum local error rate before the local region defined by maskRadius is
    excluded from polishing (arrow-only). (default: 0.7)'
  type: string
  inputBinding:
    prefix: --maskErrorRate
- id: pdb
  doc: 'Enable Python debugger (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdb
- id: no_trace
  doc: 'Suppress stacktrace for exceptions (to simplify testing) (default: False)'
  type: boolean
  inputBinding:
    prefix: --notrace
- id: pdb_at_startup
  doc: 'Drop into Python debugger at startup (requires ipdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdbAtStartup
- id: profile
  doc: 'Enable Python-level profiling (using cProfile). (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: annotate_gff
  doc: 'Augment GFF variant records with additional information (default: False)'
  type: boolean
  inputBinding:
    prefix: --annotateGFF
- id: report_effective_coverage
  doc: 'Additionally record the *post-filtering* coverage at variant sites (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --reportEffectiveCoverage
- id: auto_disable_hdf5chunk_cache
  doc: 'Disable the HDF5 chunk cache when the number of datasets in the cmp.h5 exceeds
    the given threshold (default: 500)'
  type: string
  inputBinding:
    prefix: --autoDisableHdf5ChunkCache
- id: aligner
  doc: 'The pairwise alignment algorithm that will be used to produce variant calls
    from the consensus (Quiver only). (default: affine)'
  type: string
  inputBinding:
    prefix: --aligner
- id: refine_dinucleotide_repeats
  doc: 'Require quiver maximum likelihood search to try one less/more repeat copy
    in dinucleotide repeats, which seem to be the most frequent cause of suboptimal
    convergence (getting trapped in local optimum) (Quiver only) (default: True)'
  type: boolean
  inputBinding:
    prefix: --refineDinucleotideRepeats
- id: no_refine_dinucleotide_repeats
  doc: 'Disable dinucleotide refinement (default: True)'
  type: boolean
  inputBinding:
    prefix: --noRefineDinucleotideRepeats
- id: fast
  doc: 'Cut some corners to run faster. Unsupported! (default: False)'
  type: boolean
  inputBinding:
    prefix: --fast
- id: skip_unrecognized_contigs
  doc: 'Do not abort when told to process a reference window (via -w/--referenceWindow[s])
    that has no aligned coverage. Outputs emptyish files if there are no remaining
    non-degenerate windows. Only intended for use by smrtpipe scatter/gather. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --skipUnrecognizedContigs
outputs: []
cwlVersion: v1.1
baseCommand:
- poa
