version 1.0

task Gcpp {
  input {
    Boolean? reference
    File? str_output_filenames
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
      ~{if (reference) then "--reference" else ""} \
      ~{if (str_output_filenames) then "--output" else ""} \
      ~{if (min_confidence) then "--min-confidence" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (no_evidence_call) then "--no-evidence-call" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (min_accuracy) then "--min-accuracy" else ""} \
      ~{if (min_map_qv) then "--min-map-qv" else ""} \
      ~{if (min_read_score) then "--min-read-score" else ""} \
      ~{if (min_snr) then "--min-snr" else ""} \
      ~{if (windows) then "--windows" else ""} \
      ~{if (algorithm) then "--algorithm" else ""} \
      ~{if (mask_radius) then "--mask-radius" else ""} \
      ~{if (mask_error_rate) then "--mask-error-rate" else ""} \
      ~{if (parameters_file) then "--parameters-file" else ""} \
      ~{if (parameters_spec) then "--parameters-spec" else ""} \
      ~{if (max_iterations) then "--max-iterations" else ""} \
      ~{if (max_poa_coverage) then "--max-poa-coverage" else ""} \
      ~{if (mutation_separation) then "--mutation-separation" else ""} \
      ~{if (mutation_neighborhood) then "--mutation-neighborhood" else ""} \
      ~{if (read_stump_iness_threshold) then "--read-stumpiness-threshold" else ""} \
      ~{if (reference_chunk_size) then "--reference-chunk-size" else ""} \
      ~{if (reference_chunk_overlap) then "--reference-chunk-overlap" else ""} \
      ~{if (simple_chunking) then "--simple-chunking" else ""} \
      ~{if (sort_strategy) then "--sort-strategy" else ""} \
      ~{if (min_poa_coverage) then "--min-poa-coverage" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "FILE   The filename of the reference FASTA file."
    str_output_filenames: "STR    The output filename(s), as a comma-separated list. Valid output formats are\\n.fa/.fasta, .fq/.fastq, .gff, .vcf"
    min_confidence: "INT    The minimum confidence for a variant call to be output to variants.{gff,vcf} [40]"
    min_coverage: "INT    The minimum site coverage that must be achieved for variant calls and consensus\\nto be calculated for a site. [5]"
    no_evidence_call: "STR    The consensus base that will be output for sites with no effective coverage.\\nValid choices: (nocall, reference, lowercasereference). [lowercasereference]"
    coverage: "INT    A designation of the maximum coverage level to be used for analysis. Exact\\ninterpretation is algorithm-specific. The meaningful range of this argument is\\n[1, 250]. [100]"
    min_accuracy: "FLOAT  The minimum acceptable window-global alignment accuracy for reads that will be\\nused for the analysis (arrow-only). [0.82]"
    min_map_qv: "INT    The minimum MapQV for reads that will be used for analysis. [10]"
    min_read_score: "FLOAT  The minimum ReadScore for reads that will be used for analysis (arrow-only).\\n[0.65]"
    min_snr: "FLOAT  The minimum acceptable signal-to-noise over all channels for reads that will be\\nused for analysis (arrow-only). [2.5]"
    windows: "STR    The window (or multiple comma-delimited windows) of the reference to be\\nprocessed, in the format refGroup:refStart-refEnd (default: entire reference)."
    algorithm: "STR    The consensus algorithm used. Valid choices: (arrow, plurality, poa). [arrow]"
    mask_radius: "INT    Radius of window to use when excluding local regions for exceeding\\nmaskMinErrorRate, where 0 disables any filtering (arrow-only). [3]"
    mask_error_rate: "FLOAT  Maximum local error rate before the local region defined bymaskRadius is excluded\\nfrom polishing (arrow-only). [0.7]"
    parameters_file: "STR    Path to a model file or directory containing model files."
    parameters_spec: "STR    Name of chemistry or model to use, overriding default selection."
    max_iterations: "INT    Maximum number of iterations to polish the template. [40]"
    max_poa_coverage: "INT    Maximum number of sequences to use for consensus calling. [11]"
    mutation_separation: "INT    Find the best mutations within a separation window for iterative polishing. [10]"
    mutation_neighborhood: "INT    Find nearby mutations within neighborhood for iterative polishing. [20]"
    read_stump_iness_threshold: "FLOAT  Filter out reads whose aligned length along a subread is lower than a percentage\\nof its corresponding reference length. [0.1]"
    reference_chunk_size: "INT    Size of reference chunks. [500]"
    reference_chunk_overlap: "INT    Size of reference chunk overlaps. [5]"
    simple_chunking: "Disable adaptive reference chunking."
    sort_strategy: "STR    Read sorting strategy. Valid choices: (longest_and_strand_balanced, longest,\\nspanning, file_order). [longest_and_strand_balanced]"
    min_poa_coverage: "INT    Minimum number of reads required within a window to call consensus and variants\\nusing arrow or poa. [3]"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    input_dot_bam: "STR    The input BAM file."
  }
  output {
    File out_stdout = stdout()
    File out_str_output_filenames = "${in_str_output_filenames}"
  }
}