class: CommandLineTool
id: paragraph.cwl
inputs:
- id: bad_align_frac
  doc: (=0.800000012)          Fraction of read that needs to  be mapped in order
    for it to be  used.
  type: string
  inputBinding:
    prefix: --bad-align-frac
- id: bad_align_non_uniq
  doc: (=1)                 Remove reads that are not mapped uniquely.
  type: string
  inputBinding:
    prefix: --bad-align-nonuniq
- id: bad_align_uniq_km_er_len
  doc: (=0)           Kmer length for uniqueness check during read filtering.
  type: string
  inputBinding:
    prefix: --bad-align-uniq-kmer-len
- id: b
  doc: '[ --bam ] arg                             Input BAM file(s) for read  extraction.
    We align all reads  to all graphs.'
  type: boolean
  inputBinding:
    prefix: -b
- id: graph_sequence_matching
  doc: (=1)           Enables smith waterman graph  alignment
  type: string
  inputBinding:
    prefix: --graph-sequence-matching
- id: g
  doc: '[ --graph-spec ] arg                      JSON file(s) describing the  graph(s)'
  type: boolean
  inputBinding:
    prefix: -g
- id: z
  doc: '[ --gzip-output ] [=arg(=1)] (=0)         gzip-compress output files. If  -O
    is used, output file names  are appended with .gz'
  type: boolean
  inputBinding:
    prefix: -z
- id: help_defaults
  doc: produce tab-delimited list of  command line options and their  default values
  type: boolean
  inputBinding:
    prefix: --help-defaults
- id: help_md
  doc: produce help message  pre-formatted as a markdown file section and exit
  type: boolean
  inputBinding:
    prefix: --help-md
- id: k_lib_sequence_matching
  doc: (=0)            Use klib smith-waterman aligner.
  type: string
  inputBinding:
    prefix: --klib-sequence-matching
- id: km_er_sequence_matching
  doc: (=0)            Use kmer aligner.
  type: string
  inputBinding:
    prefix: --kmer-sequence-matching
- id: log_async
  doc: (=0)                         Enable / disable async logging.
  type: string
  inputBinding:
    prefix: --log-async
- id: log_file
  doc: Log to a file instead of stderr.
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: (=info)                      Set log level (error, warning,  info).
  type: string
  inputBinding:
    prefix: --log-level
- id: m
  doc: '[ --max-reads-per-event ] arg (=10000)    Maximum number of reads to  process
    for a single event.'
  type: boolean
  inputBinding:
    prefix: -M
- id: a
  doc: '[ --output-alignments ] arg (=0)          Output alignments for every read
    (large).'
  type: boolean
  inputBinding:
    prefix: -a
- id: output_detailed_read_counts
  doc: (=0)       Output detailed read counts not  just for paths but also for each
    node/edge on the paths.
  type: string
  inputBinding:
    prefix: --output-detailed-read-counts
- id: e
  doc: '[ --output-everything ] arg (=0)          Write all information we have  into
    JSON. (=enable all  --output-* above)'
  type: boolean
  inputBinding:
    prefix: -E
- id: o
  doc: "[ --output-file ] arg                     Output file name. Will output to\
    \ stdout if '-' or neither of  output-file or output-folder  provided."
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: '[ --output-filtered-alignments ] arg (=0) Output alignments for every read
    even when it was filtered  (larger).'
  type: boolean
  inputBinding:
    prefix: -A
- id: o
  doc: '[ --output-folder ] arg                   Output folder path. paragraph  will
    attempt to create the  folder but not the entire path.  Will output to stdout
    if neither of output-file or output-folder  provided. If specified,  paragraph
    will produce one  output file for each input file  bearing the same name.'
  type: boolean
  inputBinding:
    prefix: -O
- id: output_node_coverage
  doc: (=0)              Output coverage for nodes
  type: string
  inputBinding:
    prefix: --output-node-coverage
- id: output_path_coverage
  doc: (=0)              Output coverage for paths
  type: string
  inputBinding:
    prefix: --output-path-coverage
- id: output_read_haplotypes
  doc: (=0)            Output graph haplotypes  supported by reads.
  type: string
  inputBinding:
    prefix: --output-read-haplotypes
- id: v
  doc: '[ --output-variants ] arg (=0)            Output variants not present in  the
    graph.'
  type: boolean
  inputBinding:
    prefix: -v
- id: path_sequence_matching
  doc: (=1)            Enable path seeding aligner
  type: string
  inputBinding:
    prefix: --path-sequence-matching
- id: r
  doc: '[ --reference ] arg                       Reference genome fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: response_file
  doc: file with more command line  arguments
  type: string
  inputBinding:
    prefix: --response-file
- id: t
  doc: '[ --target-regions ] arg                  Comma-separated list of target  regions,
    e.g. chr1:1-20,chr2:2-4 0. This overrides the target  regions in the graph spec.'
  type: boolean
  inputBinding:
    prefix: -T
- id: threads
  doc: (=8)                           Number of threads to use for  parallel alignment.
  type: string
  inputBinding:
    prefix: --threads
- id: validate_alignments
  doc: '[=arg(=1)] (=0)        Use information in the input bam read names to collect
    statistics about the accuracy of  alignments. Requires bam file  produced with
    simulate-reads.sh'
  type: boolean
  inputBinding:
    prefix: --validate-alignments
- id: variant_min_frac
  doc: (=0.00999999978)      Minimum fraction of reads  required to report a variant.
  type: string
  inputBinding:
    prefix: --variant-min-frac
- id: variant_min_reads
  doc: (=3)                 Minimum number of reads required to report a variant.
  type: string
  inputBinding:
    prefix: --variant-min-reads
- id: v
  doc: '[ --version ]                             print program version  information'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- paragraph
