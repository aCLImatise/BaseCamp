class: CommandLineTool
id: krakenhll.cwl
inputs:
- id: in_db
  doc: 'Name for Kraken DB (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_fast_a_input
  doc: Input is FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta-input
- id: in_fast_q_input
  doc: Input is FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq-input
- id: in_gzip_compressed
  doc: Input is gzip compressed
  type: boolean
  inputBinding:
    prefix: --gzip-compressed
- id: in_bzip_two_compressed
  doc: Input is bzip2 compressed
  type: boolean
  inputBinding:
    prefix: --bzip2-compressed
- id: in_precision
  doc: 'Precision for unique k-mer counting, between 10 and 18 (default: 12)'
  type: long
  inputBinding:
    prefix: --precision
- id: in_quick
  doc: Quick operation (use first hit or hits)
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_min_hits
  doc: "In quick op., number of hits req'd for classification\nNOTE: this is ignored\
    \ if --quick is not specified"
  type: long
  inputBinding:
    prefix: --min-hits
- id: in_unclassified_out
  doc: Print unclassified sequences to filename
  type: File
  inputBinding:
    prefix: --unclassified-out
- id: in_classified_out
  doc: Print classified sequences to filename
  type: File
  inputBinding:
    prefix: --classified-out
- id: in_output
  doc: "Print output to filename (default: stdout); \"off\" will\nsuppress normal\
    \ output"
  type: File
  inputBinding:
    prefix: --output
- id: in_only_classified_output
  doc: Print no Kraken output for unclassified sequences
  type: boolean
  inputBinding:
    prefix: --only-classified-output
- id: in_preload
  doc: Loads DB into memory before classification
  type: boolean
  inputBinding:
    prefix: --preload
- id: in_paired
  doc: The two filenames provided are paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_check_names
  doc: "Ensure each pair of reads have names that agree\nwith each other; ignored\
    \ if --paired is not specified"
  type: boolean
  inputBinding:
    prefix: --check-names
- id: in_uid_mapping
  doc: Map using UID database
  type: boolean
  inputBinding:
    prefix: --uid-mapping
- id: in_report_file
  doc: ''
  type: File
  inputBinding:
    prefix: --report-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Print output to filename (default: stdout); \"off\" will\nsuppress normal\
    \ output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- krakenhll
