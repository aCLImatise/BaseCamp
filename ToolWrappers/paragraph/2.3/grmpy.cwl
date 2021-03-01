class: CommandLineTool
id: grmpy.cwl
inputs:
- id: in_arg_output_folder_alignments
  doc: "[ --alignment-output-folder ] arg      Output folder for alignments. Note\n\
    these can become very large and are\nonly requiredfor curation /\nvisualisation\
    \ or faster reanalysis."
  type: Directory?
  inputBinding:
    prefix: -A
- id: in_bad_align_frac
  doc: "(=0.800000012)       Fraction of read that needs to be\nmapped in order for\
    \ it to be used."
  type: double?
  inputBinding:
    prefix: --bad-align-frac
- id: in_bad_align_uniq_km_er_len
  doc: "(=0)        Kmer length for uniqueness check\nduring read filtering."
  type: long?
  inputBinding:
    prefix: --bad-align-uniq-kmer-len
- id: in_arg_json_file
  doc: '[ --genotyping-parameters ] arg        JSON file with genotyping model'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_gzipcompress_output_files
  doc: "[ --gzip-output ] [=arg(=1)] (=0)      gzip-compress output files. If -O\n\
    is used, output file names are\nappended with .gz"
  type: File?
  inputBinding:
    prefix: -z
- id: in_help_defaults
  doc: "produce tab-delimited list of\ncommand line options and their\ndefault values"
  type: boolean?
  inputBinding:
    prefix: --help-defaults
- id: in_help_md
  doc: "produce help message pre-formatted\nas a markdown file section and exit"
  type: boolean?
  inputBinding:
    prefix: --help-md
- id: in_infer_read_haplotypes
  doc: "[=arg(=1)] (=0)   Infer haplotype paths using read\nand fragment information."
  type: boolean?
  inputBinding:
    prefix: --infer-read-haplotypes
- id: in_k_lib_sequence_matching
  doc: (=0)         Use klib smith-waterman aligner.
  type: long?
  inputBinding:
    prefix: --klib-sequence-matching
- id: in_km_er_sequence_matching
  doc: (=0)         Use kmer aligner.
  type: long?
  inputBinding:
    prefix: --kmer-sequence-matching
- id: in_log_async
  doc: (=0)                      Enable / disable async logging.
  type: long?
  inputBinding:
    prefix: --log-async
- id: in_log_file
  doc: Log to a file instead of stderr.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: "(=info)                   Set log level (error, warning,\ninfo)."
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_arg_manifest_samples
  doc: "[ --manifest ] arg                     Manifest of samples with path and\n\
    bam stats."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_maximum_number
  doc: "[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process\n\
    for a single event."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_arg_output_file
  doc: "[ --output-file ] arg                  Output file name. Will output to\n\
    stdout if omitted or '-'."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_output_folder_path
  doc: "[ --output-folder ] arg                Output folder path. paragraph will\n\
    attempt to create the folder but\nnot the entire path. Will output to\nstdout\
    \ if neither of output-file or\noutput-folder provided. If\nspecified, paragraph\
    \ will produce\none output file for each input file\nbearing the same name."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_path_sequence_matching
  doc: (=0)         Enables alignment to paths
  type: File?
  inputBinding:
    prefix: --path-sequence-matching
- id: in_progress
  doc: '[=arg(=1)] (=1)'
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_arg_reference_genome
  doc: '[ --reference ] arg                    Reference genome fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_response_file
  doc: file with more command line
  type: File?
  inputBinding:
    prefix: --response-file
- id: in_print_program_version
  doc: '[ --version ]                          print program version information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_parameters
  doc: '--graph-sequence-matching arg (=1)        Enables smith waterman graph '
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: '-g [ --graph-spec ] arg                   JSON file(s) describing the '
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: '-t [ --sample-threads ] arg (=8)          Number of threads for parallel '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_folder_alignments
  doc: "[ --alignment-output-folder ] arg      Output folder for alignments. Note\n\
    these can become very large and are\nonly requiredfor curation /\nvisualisation\
    \ or faster reanalysis."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_folder_alignments)
- id: out_gzipcompress_output_files
  doc: "[ --gzip-output ] [=arg(=1)] (=0)      gzip-compress output files. If -O\n\
    is used, output file names are\nappended with .gz"
  type: File?
  outputBinding:
    glob: $(inputs.in_gzipcompress_output_files)
- id: out_arg_output_file
  doc: "[ --output-file ] arg                  Output file name. Will output to\n\
    stdout if omitted or '-'."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- grmpy
