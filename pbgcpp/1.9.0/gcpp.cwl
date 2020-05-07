class: CommandLineTool
id: gcpp.cwl
inputs:
- id: input_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: FILE   The filename of the reference FASTA file.
  type: boolean
  inputBinding:
    prefix: --reference
- id: output
  doc: STR    The output filename(s), as a comma-separated list. Valid output formats
    are .fa/.fasta, .fq/.fastq, .gff, .vcf
  type: boolean
  inputBinding:
    prefix: --output
- id: min_confidence
  doc: INT    The minimum confidence for a variant call to be output to variants.{gff,vcf}
    [40]
  type: boolean
  inputBinding:
    prefix: --min-confidence
- id: min_coverage
  doc: INT    The minimum site coverage that must be achieved for variant calls and
    consensus to be calculated for a site. [5]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: no_evidence_call
  doc: 'STR    The consensus base that will be output for sites with no effective
    coverage. Valid choices: (nocall, reference, lowercasereference). [lowercasereference]'
  type: boolean
  inputBinding:
    prefix: --no-evidence-call
- id: coverage
  doc: INT    A designation of the maximum coverage level to be used for analysis.
    Exact interpretation is algorithm-specific. The meaningful range of this argument
    is [1, 250]. [100]
  type: boolean
  inputBinding:
    prefix: --coverage
- id: min_accuracy
  doc: FLOAT  The minimum acceptable window-global alignment accuracy for reads that
    will be used for the analysis (arrow-only). [0.82]
  type: boolean
  inputBinding:
    prefix: --min-accuracy
- id: min_map_qv
  doc: INT    The minimum MapQV for reads that will be used for analysis. [10]
  type: boolean
  inputBinding:
    prefix: --min-map-qv
- id: min_read_score
  doc: FLOAT  The minimum ReadScore for reads that will be used for analysis (arrow-only).
    [0.65]
  type: boolean
  inputBinding:
    prefix: --min-read-score
- id: min_snr
  doc: FLOAT  The minimum acceptable signal-to-noise over all channels for reads that
    will be used for analysis (arrow-only). [2.5]
  type: boolean
  inputBinding:
    prefix: --min-snr
- id: windows
  doc: 'STR    The window (or multiple comma-delimited windows) of the reference to
    be processed, in the format refGroup:refStart-refEnd (default: entire reference).'
  type: boolean
  inputBinding:
    prefix: --windows
- id: algorithm
  doc: 'STR    The consensus algorithm used. Valid choices: (arrow, plurality, poa).
    [arrow]'
  type: boolean
  inputBinding:
    prefix: --algorithm
- id: mask_radius
  doc: INT    Radius of window to use when excluding local regions for exceeding maskMinErrorRate,
    where 0 disables any filtering (arrow-only). [3]
  type: boolean
  inputBinding:
    prefix: --mask-radius
- id: mask_error_rate
  doc: FLOAT  Maximum local error rate before the local region defined bymaskRadius
    is excluded from polishing (arrow-only). [0.7]
  type: boolean
  inputBinding:
    prefix: --mask-error-rate
- id: parameters_file
  doc: STR    Path to a model file or directory containing model files.
  type: boolean
  inputBinding:
    prefix: --parameters-file
- id: parameters_spec
  doc: STR    Name of chemistry or model to use, overriding default selection.
  type: boolean
  inputBinding:
    prefix: --parameters-spec
- id: max_iterations
  doc: INT    Maximum number of iterations to polish the template. [40]
  type: boolean
  inputBinding:
    prefix: --max-iterations
- id: max_poa_coverage
  doc: INT    Maximum number of sequences to use for consensus calling. [11]
  type: boolean
  inputBinding:
    prefix: --max-poa-coverage
- id: mutation_separation
  doc: INT    Find the best mutations within a separation window for iterative polishing.
    [10]
  type: boolean
  inputBinding:
    prefix: --mutation-separation
- id: mutation_neighborhood
  doc: INT    Find nearby mutations within neighborhood for iterative polishing. [20]
  type: boolean
  inputBinding:
    prefix: --mutation-neighborhood
- id: read_stump_iness_threshold
  doc: FLOAT  Filter out reads whose aligned length along a subread is lower than
    a percentage of its corresponding reference length. [0.1]
  type: boolean
  inputBinding:
    prefix: --read-stumpiness-threshold
- id: reference_chunk_size
  doc: INT    Size of reference chunks. [500]
  type: boolean
  inputBinding:
    prefix: --reference-chunk-size
- id: reference_chunk_overlap
  doc: INT    Size of reference chunk overlaps. [5]
  type: boolean
  inputBinding:
    prefix: --reference-chunk-overlap
- id: simple_chunking
  doc: Disable adaptive reference chunking.
  type: boolean
  inputBinding:
    prefix: --simple-chunking
- id: sort_strategy
  doc: 'STR    Read sorting strategy. Valid choices: (longest_and_strand_balanced,
    longest, spanning, file_order). [longest_and_strand_balanced]'
  type: boolean
  inputBinding:
    prefix: --sort-strategy
- id: min_poa_coverage
  doc: INT    Minimum number of reads required within a window to call consensus and
    variants using arrow or poa. [3]
  type: boolean
  inputBinding:
    prefix: --min-poa-coverage
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gcpp
