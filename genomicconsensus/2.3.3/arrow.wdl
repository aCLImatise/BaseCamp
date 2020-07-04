version 1.0

task Arrow {
  input {
    Boolean? emit_tool_contract
    String? resolved_tool_contract
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    String? reference_filename
    String? output_file_name
    String? num_workers
    Int? min_confidence
    Int? min_coverage
    String? no_evidence_consensus_call
    String? coverage
    Int? min_map_qv
    String? reference_windows
    Boolean? alignment_set_ref_windows
    String? reference_windows_file
    Boolean? barcode
    String? read_stratum
    Int? min_read_score
    Int? mins_nr
    Int? min_zscore
    Int? min_accuracy
    String? parameters_file
    String? parameters_spec
    String? mask_radius
    String? mask_error_rate
    Boolean? pdb
    Boolean? no_trace
    Boolean? pdb_at_startup
    Boolean? profile
    Boolean? annotate_gff
    Boolean? report_effective_coverage
    String? auto_disable_hdf_five_chunk_cache
    String? aligner
    Boolean? refine_dinucleotide_repeats
    Boolean? no_refine_dinucleotide_repeats
    Boolean? fast
    Boolean? skip_unrecognized_contigs
    String input_file_name
  }
  command <<<
    arrow \
      ~{input_file_name} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{if defined(resolved_tool_contract) then ("--resolved-tool-contract " +  '"' + resolved_tool_contract + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(reference_filename) then ("--referenceFilename " +  '"' + reference_filename + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFilename " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(num_workers) then ("--numWorkers " +  '"' + num_workers + '"') else ""} \
      ~{if defined(min_confidence) then ("--minConfidence " +  '"' + min_confidence + '"') else ""} \
      ~{if defined(min_coverage) then ("--minCoverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(no_evidence_consensus_call) then ("--noEvidenceConsensusCall " +  '"' + no_evidence_consensus_call + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(min_map_qv) then ("--minMapQV " +  '"' + min_map_qv + '"') else ""} \
      ~{if defined(reference_windows) then ("--referenceWindows " +  '"' + reference_windows + '"') else ""} \
      ~{true="--alignmentSetRefWindows" false="" alignment_set_ref_windows} \
      ~{if defined(reference_windows_file) then ("--referenceWindowsFile " +  '"' + reference_windows_file + '"') else ""} \
      ~{true="--barcode" false="" barcode} \
      ~{if defined(read_stratum) then ("--readStratum " +  '"' + read_stratum + '"') else ""} \
      ~{if defined(min_read_score) then ("--minReadScore " +  '"' + min_read_score + '"') else ""} \
      ~{if defined(mins_nr) then ("--minSnr " +  '"' + mins_nr + '"') else ""} \
      ~{if defined(min_zscore) then ("--minZScore " +  '"' + min_zscore + '"') else ""} \
      ~{if defined(min_accuracy) then ("--minAccuracy " +  '"' + min_accuracy + '"') else ""} \
      ~{if defined(parameters_file) then ("--parametersFile " +  '"' + parameters_file + '"') else ""} \
      ~{if defined(parameters_spec) then ("--parametersSpec " +  '"' + parameters_spec + '"') else ""} \
      ~{if defined(mask_radius) then ("--maskRadius " +  '"' + mask_radius + '"') else ""} \
      ~{if defined(mask_error_rate) then ("--maskErrorRate " +  '"' + mask_error_rate + '"') else ""} \
      ~{true="--pdb" false="" pdb} \
      ~{true="--notrace" false="" no_trace} \
      ~{true="--pdbAtStartup" false="" pdb_at_startup} \
      ~{true="--profile" false="" profile} \
      ~{true="--annotateGFF" false="" annotate_gff} \
      ~{true="--reportEffectiveCoverage" false="" report_effective_coverage} \
      ~{if defined(auto_disable_hdf_five_chunk_cache) then ("--autoDisableHdf5ChunkCache " +  '"' + auto_disable_hdf_five_chunk_cache + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{true="--refineDinucleotideRepeats" false="" refine_dinucleotide_repeats} \
      ~{true="--noRefineDinucleotideRepeats" false="" no_refine_dinucleotide_repeats} \
      ~{true="--fast" false="" fast} \
      ~{true="--skipUnrecognizedContigs" false="" skip_unrecognized_contigs}
  >>>
  parameter_meta {
    emit_tool_contract: "Emit Tool Contract to stdout (default: False)"
    resolved_tool_contract: "Run Tool directly from a PacBio Resolved tool contract (default: None)"
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: WARN)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    reference_filename: "The filename of the reference FASTA file (default: None)"
    output_file_name: "The output filename(s), as a comma-separated list.Valid output formats are .fa/.fasta, .fq/.fastq, .gff, .vcf (default: [])"
    num_workers: "The number of worker processes to be used (default: 1)"
    min_confidence: "The minimum confidence for a variant call to be output to variants.{gff,vcf} (default: 40)"
    min_coverage: "The minimum site coverage that must be achieved for variant calls and consensus to be calculated for a site. (default: 5)"
    no_evidence_consensus_call: "The consensus base that will be output for sites with no effective coverage. (default: lowercasereference)"
    coverage: "A designation of the maximum coverage level to be used for analysis. Exact interpretation is algorithm- specific. (default: 100)"
    min_map_qv: "The minimum MapQV for reads that will be used for analysis. (default: 10)"
    reference_windows: "The window (or multiple comma-delimited windows) of the reference to be processed, in the format refGroup :refStart-refEnd (default: entire reference). (default: None)"
    alignment_set_ref_windows: "The window (or multiple comma-delimited windows) of the reference to be processed, in the format refGroup :refStart-refEnd will be pulled from the alignment file. (default: False)"
    reference_windows_file: "A file containing reference window designations, one per line (default: None)"
    barcode: "_BARCODE    Only process reads with the given barcode name. (default: None)"
    read_stratum: "A string of the form 'n/N', where n, and N are integers, 0 <= n < N, designating that the reads are to be deterministically split into N strata of roughly even size, and stratum n is to be used for variant and consensus calling. This is mostly useful for Quiver development. (default: None)"
    min_read_score: "The minimum ReadScore for reads that will be used for analysis (arrow-only). (default: 0.65)"
    mins_nr: "The minimum acceptable signal-to-noise over all channels for reads that will be used for analysis (arrow-only). (default: 2.5)"
    min_zscore: "The minimum acceptable z-score for reads that will be used for analysis (arrow-only). (default: -3.5)"
    min_accuracy: "The minimum acceptable window-global alignment accuracy for reads that will be used for the analysis (arrow-only). (default: 0.82)"
    parameters_file: "Parameter set filename (such as ArrowParameters.json or QuiverParameters.ini), or directory D such that either D/*/GenomicConsensus/QuiverParameters.ini, or D/GenomicConsensus/QuiverParameters.ini, is found. In the former case, the lexically largest path is chosen. (default: None)"
    parameters_spec: "Name of parameter set (chemistry.model) to select from the parameters file, or just the name of the chemistry, in which case the best available model is chosen. Default is 'auto', which selects the best parameter set from the alignment data (default: auto)"
    mask_radius: "Radius of window to use when excluding local regions for exceeding maskMinErrorRate, where 0 disables any filtering (arrow-only). (default: 3)"
    mask_error_rate: "Maximum local error rate before the local region defined by maskRadius is excluded from polishing (arrow-only). (default: 0.7)"
    pdb: "Enable Python debugger (default: False)"
    no_trace: "Suppress stacktrace for exceptions (to simplify testing) (default: False)"
    pdb_at_startup: "Drop into Python debugger at startup (requires ipdb) (default: False)"
    profile: "Enable Python-level profiling (using cProfile). (default: False)"
    annotate_gff: "Augment GFF variant records with additional information (default: False)"
    report_effective_coverage: "Additionally record the *post-filtering* coverage at variant sites (default: False)"
    auto_disable_hdf_five_chunk_cache: "Disable the HDF5 chunk cache when the number of datasets in the cmp.h5 exceeds the given threshold (default: 500)"
    aligner: "The pairwise alignment algorithm that will be used to produce variant calls from the consensus (Quiver only). (default: affine)"
    refine_dinucleotide_repeats: "Require quiver maximum likelihood search to try one less/more repeat copy in dinucleotide repeats, which seem to be the most frequent cause of suboptimal convergence (getting trapped in local optimum) (Quiver only) (default: True)"
    no_refine_dinucleotide_repeats: "Disable dinucleotide refinement (default: True)"
    fast: "Cut some corners to run faster. Unsupported! (default: False)"
    skip_unrecognized_contigs: "Do not abort when told to process a reference window (via -w/--referenceWindow[s]) that has no aligned coverage. Outputs emptyish files if there are no remaining non-degenerate windows. Only intended for use by smrtpipe scatter/gather. (default: False)"
    input_file_name: "The input cmp.h5 or BAM alignment file"
  }
}