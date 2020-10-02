class: CommandLineTool
id: paragraph.cwl
inputs:
- id: in_bad_align_frac
  doc: "(=0.800000012)          Fraction of read that needs to\nbe mapped in order\
    \ for it to be\nused."
  type: double
  inputBinding:
    prefix: --bad-align-frac
- id: in_bad_align_non_uniq
  doc: (=1)                 Remove reads that are not mapped
  type: long
  inputBinding:
    prefix: --bad-align-nonuniq
- id: in_arg_input_bam
  doc: "[ --bam ] arg                             Input BAM file(s) for read\nextraction.\
    \ We align all reads\nto all graphs."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_graph_sequence_matching
  doc: (=1)           Enables smith waterman graph
  type: long
  inputBinding:
    prefix: --graph-sequence-matching
- id: in_gzipcompress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)         gzip-compress output files. If'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_used_file_names
  doc: used, output file names
  type: File
  inputBinding:
    prefix: -O
- id: in_help_defaults
  doc: "produce tab-delimited list of\ncommand line options and their\ndefault values"
  type: boolean
  inputBinding:
    prefix: --help-defaults
- id: in_help_md
  doc: "produce help message\npre-formatted as a markdown file\nsection and exit"
  type: boolean
  inputBinding:
    prefix: --help-md
- id: in_k_lib_sequence_matching
  doc: (=0)            Use klib smith-waterman aligner.
  type: long
  inputBinding:
    prefix: --klib-sequence-matching
- id: in_km_er_sequence_matching
  doc: (=0)            Use kmer aligner.
  type: long
  inputBinding:
    prefix: --kmer-sequence-matching
- id: in_log_async
  doc: (=0)                         Enable / disable async logging.
  type: long
  inputBinding:
    prefix: --log-async
- id: in_log_file
  doc: Log to a file instead of stderr.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: "(=info)                      Set log level (error, warning,\ninfo)."
  type: string
  inputBinding:
    prefix: --log-level
- id: in_arg_maximum_number
  doc: "[ --max-reads-per-event ] arg (=10000)    Maximum number of reads to\nprocess\
    \ for a single event."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_arg_output_alignments_readlarge
  doc: "[ --output-alignments ] arg (=0)          Output alignments for every read\n\
    (large)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_output_detailed_read_counts
  doc: "(=0)       Output detailed read counts not\njust for paths but also for each\n\
    node/edge on the paths."
  type: long
  inputBinding:
    prefix: --output-detailed-read-counts
- id: in_arg_write_information
  doc: "[ --output-everything ] arg (=0)          Write all information we have\n\
    into JSON. (=enable all\n--output-* above)"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_arg_output_file
  doc: "[ --output-file ] arg                     Output file name. Will output to\n\
    stdout if '-' or neither of\noutput-file or output-folder\nprovided."
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_output_alignments_readeven
  doc: "[ --output-filtered-alignments ] arg (=0) Output alignments for every read\n\
    even when it was filtered\n(larger)."
  type: boolean
  inputBinding:
    prefix: -A
- id: in_output_node_coverage
  doc: (=0)              Output coverage for nodes
  type: long
  inputBinding:
    prefix: --output-node-coverage
- id: in_output_path_coverage
  doc: (=0)              Output coverage for paths
  type: File
  inputBinding:
    prefix: --output-path-coverage
- id: in_output_read_haplotypes
  doc: "(=0)            Output graph haplotypes\nsupported by reads."
  type: long
  inputBinding:
    prefix: --output-read-haplotypes
- id: in_arg_output_variants
  doc: "[ --output-variants ] arg (=0)            Output variants not present in\n\
    the graph."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_path_sequence_matching
  doc: (=1)            Enable path seeding aligner
  type: File
  inputBinding:
    prefix: --path-sequence-matching
- id: in_arg_fasta_file
  doc: '[ --reference ] arg                       Reference genome fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_response_file
  doc: file with more command line
  type: File
  inputBinding:
    prefix: --response-file
- id: in_threads
  doc: "(=8)                           Number of threads to use for\nparallel alignment."
  type: long
  inputBinding:
    prefix: --threads
- id: in_validate_alignments
  doc: "[=arg(=1)] (=0)        Use information in the input bam\nread names to collect\
    \ statistics\nabout the accuracy of\nalignments. Requires bam file\nproduced with\
    \ simulate-reads.sh"
  type: boolean
  inputBinding:
    prefix: --validate-alignments
- id: in_variant_min_frac
  doc: "(=0.00999999978)      Minimum fraction of reads\nrequired to report a variant."
  type: long
  inputBinding:
    prefix: --variant-min-frac
- id: in_variant_min_reads
  doc: "(=3)                 Minimum number of reads required\nto report a variant."
  type: long
  inputBinding:
    prefix: --variant-min-reads
- id: in_uniquely_dot
  doc: --bad-align-uniq-kmer-len arg (=0)           Kmer length for uniqueness check
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: '-g [ --graph-spec ] arg                      JSON file(s) describing the '
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: '-T [ --target-regions ] arg                  Comma-separated list of target '
  type: string
  inputBinding:
    position: 0
- id: in_information
  doc: 'Failed to parse the options: ERROR: BAM file is missing.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_used_file_names
  doc: used, output file names
  type: File
  outputBinding:
    glob: $(inputs.in_used_file_names)
- id: out_arg_output_file
  doc: "[ --output-file ] arg                     Output file name. Will output to\n\
    stdout if '-' or neither of\noutput-file or output-folder\nprovided."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_output_path_coverage
  doc: (=0)              Output coverage for paths
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_coverage)
cwlVersion: v1.1
baseCommand:
- paragraph
