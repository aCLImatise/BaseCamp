version 1.0

task Gcpp {
  input {
    Boolean? reference
    Boolean? str_output_filenames
    Boolean? min_confidence
    Boolean? min_coverage
    Boolean? no_evidence_call
    Boolean? coverage
    Boolean? min_accuracy
    Boolean? min_map_qv
    Boolean? min_read_score
    Boolean? min_snr
    Boolean? windows
    Boolean? algorithm
    Boolean? mask_radius
    Boolean? mask_error_rate
    Boolean? parameters_file
    Boolean? parameters_spec
    Boolean? max_iterations
    Boolean? max_poa_coverage
    Boolean? mutation_separation
    Boolean? mutation_neighborhood
    Boolean? read_stump_iness_threshold
    Boolean? reference_chunk_size
    Boolean? reference_chunk_overlap
    Boolean? simple_chunking
    Boolean? sort_strategy
    Boolean? min_poa_coverage
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String input_dot_bam
  }
  command <<<
    gcpp \
      ~{input_dot_bam} \
      ~{true="--reference" false="" reference} \
      ~{true="--output" false="" str_output_filenames} \
      ~{true="--min-confidence" false="" min_confidence} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--no-evidence-call" false="" no_evidence_call} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--min-accuracy" false="" min_accuracy} \
      ~{true="--min-map-qv" false="" min_map_qv} \
      ~{true="--min-read-score" false="" min_read_score} \
      ~{true="--min-snr" false="" min_snr} \
      ~{true="--windows" false="" windows} \
      ~{true="--algorithm" false="" algorithm} \
      ~{true="--mask-radius" false="" mask_radius} \
      ~{true="--mask-error-rate" false="" mask_error_rate} \
      ~{true="--parameters-file" false="" parameters_file} \
      ~{true="--parameters-spec" false="" parameters_spec} \
      ~{true="--max-iterations" false="" max_iterations} \
      ~{true="--max-poa-coverage" false="" max_poa_coverage} \
      ~{true="--mutation-separation" false="" mutation_separation} \
      ~{true="--mutation-neighborhood" false="" mutation_neighborhood} \
      ~{true="--read-stumpiness-threshold" false="" read_stump_iness_threshold} \
      ~{true="--reference-chunk-size" false="" reference_chunk_size} \
      ~{true="--reference-chunk-overlap" false="" reference_chunk_overlap} \
      ~{true="--simple-chunking" false="" simple_chunking} \
      ~{true="--sort-strategy" false="" sort_strategy} \
      ~{true="--min-poa-coverage" false="" min_poa_coverage} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    reference: "FILE   The filename of the reference FASTA file."
    str_output_filenames: "STR    The output filename(s), as a comma-separated list. Valid output formats are .fa/.fasta, .fq/.fastq, .gff, .vcf"
    min_confidence: "INT    The minimum confidence for a variant call to be output to variants.{gff,vcf} [40]"
    min_coverage: "INT    The minimum site coverage that must be achieved for variant calls and consensus to be calculated for a site. [5]"
    no_evidence_call: "STR    The consensus base that will be output for sites with no effective coverage. Valid choices: (nocall, reference, lowercasereference). [lowercasereference]"
    coverage: "INT    A designation of the maximum coverage level to be used for analysis. Exact interpretation is algorithm-specific. The meaningful range of this argument is [1, 250]. [100]"
    min_accuracy: "FLOAT  The minimum acceptable window-global alignment accuracy for reads that will be used for the analysis (arrow-only). [0.82]"
    min_map_qv: "INT    The minimum MapQV for reads that will be used for analysis. [10]"
    min_read_score: "FLOAT  The minimum ReadScore for reads that will be used for analysis (arrow-only). [0.65]"
    min_snr: "FLOAT  The minimum acceptable signal-to-noise over all channels for reads that will be used for analysis (arrow-only). [2.5]"
    windows: "STR    The window (or multiple comma-delimited windows) of the reference to be processed, in the format refGroup:refStart-refEnd (default: entire reference)."
    algorithm: "STR    The consensus algorithm used. Valid choices: (arrow, plurality, poa). [arrow]"
    mask_radius: "INT    Radius of window to use when excluding local regions for exceeding maskMinErrorRate, where 0 disables any filtering (arrow-only). [3]"
    mask_error_rate: "FLOAT  Maximum local error rate before the local region defined bymaskRadius is excluded from polishing (arrow-only). [0.7]"
    parameters_file: "STR    Path to a model file or directory containing model files."
    parameters_spec: "STR    Name of chemistry or model to use, overriding default selection."
    max_iterations: "INT    Maximum number of iterations to polish the template. [40]"
    max_poa_coverage: "INT    Maximum number of sequences to use for consensus calling. [11]"
    mutation_separation: "INT    Find the best mutations within a separation window for iterative polishing. [10]"
    mutation_neighborhood: "INT    Find nearby mutations within neighborhood for iterative polishing. [20]"
    read_stump_iness_threshold: "FLOAT  Filter out reads whose aligned length along a subread is lower than a percentage of its corresponding reference length. [0.1]"
    reference_chunk_size: "INT    Size of reference chunks. [500]"
    reference_chunk_overlap: "INT    Size of reference chunk overlaps. [5]"
    simple_chunking: "Disable adaptive reference chunking."
    sort_strategy: "STR    Read sorting strategy. Valid choices: (longest_and_strand_balanced, longest, spanning, file_order). [longest_and_strand_balanced]"
    min_poa_coverage: "INT    Minimum number of reads required within a window to call consensus and variants using arrow or poa. [3]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    input_dot_bam: "STR    The input BAM file."
  }
}