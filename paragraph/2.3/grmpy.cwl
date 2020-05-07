class: CommandLineTool
id: grmpy.cwl
inputs:
- id: a
  doc: '[ --alignment-output-folder ] arg      Output folder for alignments. Note  these
    can become very large and are only requiredfor curation /  visualisation or faster
    reanalysis.'
  type: boolean
  inputBinding:
    prefix: -A
- id: bad_align_frac
  doc: (=0.800000012)       Fraction of read that needs to be  mapped in order for
    it to be used.
  type: string
  inputBinding:
    prefix: --bad-align-frac
- id: bad_align_uniq_km_er_len
  doc: (=0)        Kmer length for uniqueness check  during read filtering.
  type: string
  inputBinding:
    prefix: --bad-align-uniq-kmer-len
- id: g
  doc: '[ --genotyping-parameters ] arg        JSON file with genotyping model  parameters'
  type: boolean
  inputBinding:
    prefix: -G
- id: graph_sequence_matching
  doc: (=1)        Enables smith waterman graph  alignment
  type: string
  inputBinding:
    prefix: --graph-sequence-matching
- id: g
  doc: '[ --graph-spec ] arg                   JSON file(s) describing the  graph(s)'
  type: boolean
  inputBinding:
    prefix: -g
- id: z
  doc: '[ --gzip-output ] [=arg(=1)] (=0)      gzip-compress output files. If -O  is
    used, output file names are  appended with .gz'
  type: boolean
  inputBinding:
    prefix: -z
- id: help_defaults
  doc: produce tab-delimited list of  command line options and their  default values
  type: boolean
  inputBinding:
    prefix: --help-defaults
- id: help_md
  doc: produce help message pre-formatted  as a markdown file section and exit
  type: boolean
  inputBinding:
    prefix: --help-md
- id: infer_read_haplotypes
  doc: '[=arg(=1)] (=0)   Infer haplotype paths using read  and fragment information.'
  type: boolean
  inputBinding:
    prefix: --infer-read-haplotypes
- id: k_lib_sequence_matching
  doc: (=0)         Use klib smith-waterman aligner.
  type: string
  inputBinding:
    prefix: --klib-sequence-matching
- id: km_er_sequence_matching
  doc: (=0)         Use kmer aligner.
  type: string
  inputBinding:
    prefix: --kmer-sequence-matching
- id: log_async
  doc: (=0)                      Enable / disable async logging.
  type: string
  inputBinding:
    prefix: --log-async
- id: log_file
  doc: Log to a file instead of stderr.
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: (=info)                   Set log level (error, warning,  info).
  type: string
  inputBinding:
    prefix: --log-level
- id: m
  doc: '[ --manifest ] arg                     Manifest of samples with path and  bam
    stats.'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process  for
    a single event.'
  type: boolean
  inputBinding:
    prefix: -M
- id: o
  doc: "[ --output-file ] arg                  Output file name. Will output to  stdout\
    \ if omitted or '-'."
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: '[ --output-folder ] arg                Output folder path. paragraph will  attempt
    to create the folder but  not the entire path. Will output to stdout if neither
    of output-file or output-folder provided. If  specified, paragraph will produce  one
    output file for each input file bearing the same name.'
  type: boolean
  inputBinding:
    prefix: -O
- id: path_sequence_matching
  doc: (=0)         Enables alignment to paths
  type: string
  inputBinding:
    prefix: --path-sequence-matching
- id: progress
  doc: '[=arg(=1)] (=1)'
  type: boolean
  inputBinding:
    prefix: --progress
- id: r
  doc: '[ --reference ] arg                    Reference genome fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: response_file
  doc: file with more command line  arguments
  type: string
  inputBinding:
    prefix: --response-file
- id: t
  doc: '[ --sample-threads ] arg (=8)          Number of threads for parallel  sample
    processing.'
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: '[ --version ]                          print program version information'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- grmpy
