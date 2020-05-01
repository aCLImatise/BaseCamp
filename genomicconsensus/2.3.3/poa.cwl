#!/usr/bin/env cwl-runner

baseCommand:
- poa
class: CommandLineTool
cwlVersion: v1.0
id: poa
inputs:
- doc: The input cmp.h5 or BAM alignment file
  id: input_file_name
  inputBinding:
    position: 0
  type: string
- doc: 'Emit Tool Contract to stdout (default: False)'
  id: emit_tool_contract
  inputBinding:
    prefix: --emit-tool-contract
  type: boolean
- doc: 'Run Tool directly from a PacBio Resolved tool contract (default: None)'
  id: resolved_tool_contract
  inputBinding:
    prefix: --resolved-tool-contract
  type: string
- doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'Set log level (default: WARN)'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Alias for setting log level to DEBUG (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Set the verbosity level. (default: None)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'The filename of the reference FASTA file (default: None)'
  id: reference_filename
  inputBinding:
    prefix: --referenceFilename
  type: string
- doc: 'The output filename(s), as a comma-separated list.Valid output formats are
    .fa/.fasta, .fq/.fastq, .gff, .vcf (default: [])'
  id: output_file_name
  inputBinding:
    prefix: --outputFilename
  type: string
- doc: 'The number of worker processes to be used (default: 1)'
  id: num_workers
  inputBinding:
    prefix: --numWorkers
  type: string
- doc: 'The minimum confidence for a variant call to be output to variants.{gff,vcf}
    (default: 40)'
  id: min_confidence
  inputBinding:
    prefix: --minConfidence
  type: long
- doc: 'The minimum site coverage that must be achieved for variant calls and consensus
    to be calculated for a site. (default: 5)'
  id: min_coverage
  inputBinding:
    prefix: --minCoverage
  type: long
- doc: 'The consensus base that will be output for sites with no effective coverage.
    (default: lowercasereference)'
  id: no_evidence_consensus_call
  inputBinding:
    prefix: --noEvidenceConsensusCall
  type: string
- doc: 'A designation of the maximum coverage level to be used for analysis. Exact
    interpretation is algorithm- specific. (default: 100)'
  id: coverage
  inputBinding:
    prefix: --coverage
  type: string
- doc: 'The minimum MapQV for reads that will be used for analysis. (default: 10)'
  id: min_map_qv
  inputBinding:
    prefix: --minMapQV
  type: long
- doc: 'The window (or multiple comma-delimited windows) of the reference to be processed,
    in the format refGroup :refStart-refEnd (default: entire reference). (default:
    None)'
  id: reference_windows
  inputBinding:
    prefix: --referenceWindows
  type: string
- doc: 'The window (or multiple comma-delimited windows) of the reference to be processed,
    in the format refGroup :refStart-refEnd will be pulled from the alignment file.
    (default: False)'
  id: alignment_set_ref_windows
  inputBinding:
    prefix: --alignmentSetRefWindows
  type: boolean
- doc: 'A file containing reference window designations, one per line (default: None)'
  id: reference_windows_file
  inputBinding:
    prefix: --referenceWindowsFile
  type: string
- doc: '_BARCODE    Only process reads with the given barcode name. (default: None)'
  id: barcode
  inputBinding:
    prefix: --barcode
  type: boolean
- doc: "A string of the form 'n/N', where n, and N are integers, 0 <= n < N, designating\
    \ that the reads are to be deterministically split into N strata of roughly even\
    \ size, and stratum n is to be used for variant and consensus calling. This is\
    \ mostly useful for Quiver development. (default: None)"
  id: read_stratum
  inputBinding:
    prefix: --readStratum
  type: string
- doc: 'The minimum ReadScore for reads that will be used for analysis (arrow-only).
    (default: 0.65)'
  id: min_read_score
  inputBinding:
    prefix: --minReadScore
  type: long
- doc: 'The minimum acceptable signal-to-noise over all channels for reads that will
    be used for analysis (arrow-only). (default: 2.5)'
  id: mins_nr
  inputBinding:
    prefix: --minSnr
  type: long
- doc: 'The minimum acceptable z-score for reads that will be used for analysis (arrow-only).
    (default: -3.5)'
  id: min_zscore
  inputBinding:
    prefix: --minZScore
  type: long
- doc: 'The minimum acceptable window-global alignment accuracy for reads that will
    be used for the analysis (arrow-only). (default: 0.82)'
  id: min_accuracy
  inputBinding:
    prefix: --minAccuracy
  type: long
- doc: 'Parameter set filename (such as ArrowParameters.json or QuiverParameters.ini),
    or directory D such that either D/*/GenomicConsensus/QuiverParameters.ini, or
    D/GenomicConsensus/QuiverParameters.ini, is found. In the former case, the lexically
    largest path is chosen. (default: None)'
  id: parameters_file
  inputBinding:
    prefix: --parametersFile
  type: string
- doc: "Name of parameter set (chemistry.model) to select from the parameters file,\
    \ or just the name of the chemistry, in which case the best available model is\
    \ chosen. Default is 'auto', which selects the best parameter set from the alignment\
    \ data (default: auto)"
  id: parameters_spec
  inputBinding:
    prefix: --parametersSpec
  type: string
- doc: 'Radius of window to use when excluding local regions for exceeding maskMinErrorRate,
    where 0 disables any filtering (arrow-only). (default: 3)'
  id: mask_radius
  inputBinding:
    prefix: --maskRadius
  type: string
- doc: 'Maximum local error rate before the local region defined by maskRadius is
    excluded from polishing (arrow-only). (default: 0.7)'
  id: mask_error_rate
  inputBinding:
    prefix: --maskErrorRate
  type: string
- doc: 'Enable Python debugger (default: False)'
  id: pdb
  inputBinding:
    prefix: --pdb
  type: boolean
- doc: 'Suppress stacktrace for exceptions (to simplify testing) (default: False)'
  id: no_trace
  inputBinding:
    prefix: --notrace
  type: boolean
- doc: 'Drop into Python debugger at startup (requires ipdb) (default: False)'
  id: pdb_at_startup
  inputBinding:
    prefix: --pdbAtStartup
  type: boolean
- doc: 'Enable Python-level profiling (using cProfile). (default: False)'
  id: profile
  inputBinding:
    prefix: --profile
  type: boolean
- doc: 'Augment GFF variant records with additional information (default: False)'
  id: annotate_gff
  inputBinding:
    prefix: --annotateGFF
  type: boolean
- doc: 'Additionally record the *post-filtering* coverage at variant sites (default:
    False)'
  id: report_effective_coverage
  inputBinding:
    prefix: --reportEffectiveCoverage
  type: boolean
- doc: 'Disable the HDF5 chunk cache when the number of datasets in the cmp.h5 exceeds
    the given threshold (default: 500)'
  id: auto_disable_hdf5chunk_cache
  inputBinding:
    prefix: --autoDisableHdf5ChunkCache
  type: string
- doc: 'The pairwise alignment algorithm that will be used to produce variant calls
    from the consensus (Quiver only). (default: affine)'
  id: aligner
  inputBinding:
    prefix: --aligner
  type: string
- doc: 'Require quiver maximum likelihood search to try one less/more repeat copy
    in dinucleotide repeats, which seem to be the most frequent cause of suboptimal
    convergence (getting trapped in local optimum) (Quiver only) (default: True)'
  id: refine_dinucleotide_repeats
  inputBinding:
    prefix: --refineDinucleotideRepeats
  type: boolean
- doc: 'Disable dinucleotide refinement (default: True)'
  id: no_refine_dinucleotide_repeats
  inputBinding:
    prefix: --noRefineDinucleotideRepeats
  type: boolean
- doc: 'Cut some corners to run faster. Unsupported! (default: False)'
  id: fast
  inputBinding:
    prefix: --fast
  type: boolean
- doc: 'Do not abort when told to process a reference window (via -w/--referenceWindow[s])
    that has no aligned coverage. Outputs emptyish files if there are no remaining
    non-degenerate windows. Only intended for use by smrtpipe scatter/gather. (default:
    False)'
  id: skip_unrecognized_contigs
  inputBinding:
    prefix: --skipUnrecognizedContigs
  type: boolean
